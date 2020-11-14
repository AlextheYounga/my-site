require "resolv-replace"
require "async"
require "async/barrier"
require "async/http/internet"
require "json"
require "logger"
require "colorize"

desc "This task will make async requests to Github and retrieve the langauge statistics from each repo in Github"
task :sync_github => :environment do
  languages = []
  username = "AlextheYounga"
  api_url = "https://api.github.com/search/repositories?q=user:#{username}"

  begin
    puts "#{api_url}".yellow
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
    puts "#{link} - Error - #{e}"
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
    return "Failed to get language stats".red
  end

  sorted = langSum.sort_by { |k, v| -v }

  saved = Rails.cache.write("repo_langs", sorted.to_h)
  puts "Cached #{saved}".green
end
