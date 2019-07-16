require "httparty"
require "nokogiri"
require "resolv-replace"

desc "Scrape Medium for images"
task :scrape_posts => :environment do

  feed = Nokogiri::HTML(open("https://medium.com/feed/@AlextheYounger/"))
  tags = feed.css('img')
  images = tags.map { |element| element["src"] }
  images.delete_if { |image| image.include? "https://medium.com/_/stat?" }

images.each do |img|
  puts "#{img}"
end

end
