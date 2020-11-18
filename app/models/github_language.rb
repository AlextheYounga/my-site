require "json"
require "resolv-replace"
require "async"
require "async/barrier"
require "async/http/internet"
require "json"
require "logger"
require "colorize"

class GithubLanguage < ActiveRecord::Base
  self.table_name = "github_languages"

  def self.calculateWidths
    langs = GithubLanguage.order(value: :desc)
    values = GithubLanguage.pluck(:value)
    if (langs.any?)
      total = values.sum
      widths = {}
      langs.each do |lang|
        if ((lang.value.to_f.is_a?(Float) && total.to_f.is_a?(Float)) && (lang.value > 0 && total > 0))
          width = ((lang.value.to_f / total.to_f) * 100).round(2)
          widths[lang.language] = width
        end
      end
      return widths
    end
  end


  def self.slugifyLanguage(string)
    if (string.include? "+")
      string.gsub("+", "plus")
    end
    return string.parameterize
  end


  def self.fetchGithub
    languages = []
    username = "AlextheYounga"
    api_url = "https://api.github.com/search/repositories?q=user:#{username}"

    begin
      puts "#{api_url}".yellow
      logger = Rails.logger
      oauth = "token #{Rails.application.credentials.github_personal_token}"
      repoResponse = Nokogiri::HTML(open(
        api_url,
        "User-Agent" => username,
        "Authorization" => oauth,
        "proxy" => "http://(ip_address):(port)",
      ), nil, "UTF-8")

      if (repoResponse.nil? == false || repoResponse.empty? == false)
        jsonResponse = JSON.parse repoResponse

        Async do
          internet = Async::HTTP::Internet.new
          barrier = Async::Barrier.new

          headers = [
            ["User-Agent", username],
            ["proxy", "http://(ip_address):(port)"],
            ["accept", "application/vnd.github.v3+json"],
            ["Authorization", "token #{Rails.application.credentials.github_personal_token}"],
          ]

          jsonResponse["items"].each do |repo|
            langUrl = repo["languages_url"] if repo.key?("languages_url")
            if (langUrl.nil? == false)
              # Spawn an asynchronous task for each topic:
              barrier.async do
                puts "#{langUrl}".green
                langResponse = internet.get(langUrl, headers)
                langs = JSON.parse(langResponse.read)

                if (langs.empty? == false)
                  languages << langs
                end
              end
            end
          end

          # Ensure we wait for all requests to complete before continuing:
          barrier.wait

        ensure
          internet&.close
        end
      end
    rescue => e
      puts "#{link} - Error - #{e}".red      
      logger.error e.message
      logger.error e.backtrace.join("\n")
    end

    langSum = {}
    languages.each do |language|
      language.each do |lang, value|
        if (langSum.key?(lang) == false)
          langSum[lang] = value
          next
        end
        langSum[lang] = (langSum[lang] + value)
      end
    end

    if (langSum.blank?)
      logger.info 'Failed to get language stats; stats are nil.'
      return "Failed to get language stats".red      
    end

    langSum.each do |l, v|
      record = GithubLanguage.find_or_initialize_by(language: l)
      record.value = v
      record.save!
      puts "#{l} - #{v} saved"
    end
  end
end
