require "json"
require "resolv-replace"
# require "async"
# require "async/barrier"
# require "async/http/internet"
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

    puts "#{api_url}".yellow
    logger = Rails.logger
    oauth = "token #{Rails.application.credentials.github_personal_token}"
    repoResponse = Nokogiri::HTML(open(
      api_url,
      :http_basic_authentication => [
        username,
        oauth
      ],
      "User-Agent" => username,
      "Authorization" => oauth,
      "proxy" => "http://(ip_address):(port)",
    ), nil, "UTF-8")

    if (repoResponse.nil? == false || repoResponse.empty? == false)
      jsonResponse = JSON.parse(repoResponse)


      jsonResponse["items"].each do |repo|
        langUrl = repo["languages_url"] if repo.key?("languages_url")
        if (langUrl.nil? == false)

            langResponse = Nokogiri::HTML(open(
              langUrl,
              :http_basic_authentication => [
                username,
                oauth
              ],
              "User-Agent" => username,
              "Authorization" => oauth,
              "proxy" => "http://(ip_address):(port)",
              "accept" => "application/vnd.github.v3+json",
            ), nil, "UTF-8")

            puts "#{langUrl}".green
            langs = JSON.parse(langResponse)

          if (langs.empty? == false)
              languages << langs
          end
        end
      end
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
      puts "#{l} - #{v} saved "
      puts "\n"
    end
  end
end
