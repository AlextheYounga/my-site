desc "This task will make async requests to Github and retrieve the langauge statistics from each repo in Github"
task :github => :environment do
  GithubLanguage.fetchGithub
end
