require "resolv-replace"
require "async"
require "async/barrier"
require "async/http/internet"
require "json"
require "logger"
require "colorize"

desc "This task will make async requests to Github and retrieve the langauge statistics from each repo in Github"
task :sync_github => :environment do
  api_address = "https://api.github.com/users/AlextheYounga/repos"
  languages = []

  begin
    puts "#{api_address}".yellow
    user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.854.0 Safari/535.2"
    repoResponse = Nokogiri::HTML(open(api_address, "proxy" => "http://(ip_address):(port)", "User-Agent" => user_agent), nil, "UTF-8")

    if (repoResponse.nil? == false || repoResponse.empty? == false)
      jsonResponse = JSON.parse repoResponse

      Async do
        internet = Async::HTTP::Internet.new
        barrier = Async::Barrier.new

        headers = [
          ["User-Agent", user_agent],
          ["proxy", "http://(ip_address):(port)"],
          ["accept", "application/json"],
        ]

        jsonResponse.each do |repo|
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

  saved = Rails.cache.write("repo_langs", langSum)
  puts "Cached #{saved}".green
end
