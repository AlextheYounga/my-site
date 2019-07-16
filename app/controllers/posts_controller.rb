require 'rss'
require 'open-uri'
require 'nokogiri'

class PostsController < ApplicationController
  Post = Struct.new(:title, :content, :pubDate, :link)

  def index
    feed = RSS::Parser.parse('https://medium.com/feed/@AlextheYounger/')

    img = Nokogiri::HTML(open("https://medium.com/feed/@AlextheYounger/"))



    @posts = feed.items.map do |post|
      Post.new(post.title, post.content_encoded, post.pubDate, post.link)
    end
    
  end
end
