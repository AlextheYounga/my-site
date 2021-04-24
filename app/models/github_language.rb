require "json"
require "resolv-replace"
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

  def self.suppressLanguages(repoSlug, langs)
    # Sometimes code from certain packages can highly skew your language stats.
    # For instance, in Django, some asset packages, like Tailwind, are pushed to the repo, and suddenly your Python Django project
    # is now treated as 90% CSS.
    # We can suppress that data here by pointing to a repo name and the language you would like to suppress.

    suppressLang = {
      "hazlitt-data" => {
        "lang" => "CSS",
        "suppressBy" => 0.0000021,
        # Will suppress by whatever value you pass into suppressBy. 
        # Let's say you Django project has 4259089 lines of CSS code, but only 9 of those lines are yours.
        # 9 / 4259089 = 0.0000021
      },
    }

    if (suppressLang.has_key?(repoSlug))
      lang = suppressLang[repoSlug]["lang"]
      suppressBy = suppressLang[repoSlug]["suppressBy"]

      langs[lang] = (langs[lang] * suppressBy).to_i
    end

    return langs
  end

  def self.fetchGithub
    langSum = {}
    username = "AlextheYounga"
    api_url = "https://api.github.com/search/repositories?q=user:#{username}"

    puts "#{api_url}".yellow
    logger = Rails.logger
    oauth = "token #{Rails.application.credentials.github_personal_token}"
    repoResponse = Nokogiri::HTML(open(
      api_url,
      :http_basic_authentication => [
        username,
        oauth,
      ],
      "User-Agent" => username,
      "Authorization" => oauth,
      "proxy" => "http://(ip_address):(port)",
    ), nil, "UTF-8")

    if (repoResponse.nil? == false || repoResponse.empty? == false)
      jsonResponse = JSON.parse(repoResponse)

      jsonResponse["items"].each do |repo|
        langUrl = repo["languages_url"] if repo.key?("languages_url")
        repoSlug = langUrl.split("https://api.github.com/repos/#{username}/")[1].split("/languages")[0]

        if (langUrl.nil? == false)
          langResponse = Nokogiri::HTML(open(
            langUrl,
            :http_basic_authentication => [
              username,
              oauth,
            ],
            "User-Agent" => username,
            "Authorization" => oauth,
            "proxy" => "http://(ip_address):(port)",
            "accept" => "application/vnd.github.v3+json",
          ), nil, "UTF-8")

          puts "#{langUrl}".green
          langs = JSON.parse(langResponse)

          if (langs.empty? == false)            
            langs = GithubLanguage.suppressLanguages(repoSlug, langs)
            puts "#{repoSlug} => #{langs}}".light_blue

            langs.each do |lang, value|
              if (langSum.key?(lang) == false)
                langSum[lang] = value
                next
              end
              langSum[lang] = (langSum[lang] + value)
            end
          end
          sleep(1)
        end
      end
    end

    if (langSum.blank?)
      logger.info "Failed to get language stats; stats are nil."
      return "Failed to get language stats".red
    end

    langSum.each do |l, v|
      record = GithubLanguage.find_or_initialize_by(language: l)
      record.value = v
      record.save!
      puts "#{l} - #{v} saved "
    end
  end
end
