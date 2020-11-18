load "app/modules/language_stats.rb"
include LanguageStats

desc "This task will make async requests to Github and retrieve the langauge statistics from each repo in Github"
task :github => :environment do
  LanguageStats::fetchGithub()
end
