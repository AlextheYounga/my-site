require "rss"
require "open-uri"
require "nokogiri"

class PostsController < ApplicationController
  before_action :restrict
  Post = Struct.new(:title, :content, :pubDate, :link)

  def index
    feed = RSS::Parser.parse("https://medium.com/feed/@AlextheYounger/")

    @posts = feed.items.map do |post|
      Post.new(post.title, post.content_encoded, post.pubDate, post.link)
    end
  end

  private

  def restrict
    if not master_logged_in?
      redirect_to root_path
    end
  end
end
