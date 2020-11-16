load "app/modules/webp_converter.rb"

namespace :assets do
  desc "Create .webp versions of assets"
  task :webp => :environment do
    WebpConverter.convert_assets
  end
end
