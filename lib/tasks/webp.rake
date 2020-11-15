load "app/modules/webp.rb"

namespace :assets do
  desc "Create .webp versions of assets"
  task :webp => :environment do
    Webp.generate_webps
  end
end
