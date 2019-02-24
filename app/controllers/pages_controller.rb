require 'rubygems'
require 'rss'
require 'stock_quote'

class PagesController < ApplicationController


  def home
    @articles = Article.order("created_at desc").limit(3)

  end

  def about
  end

  def readinglist
    @books = Book.all
    # @category = Book.category
    # @image_address = Book.image_address
    # @image_alt = Book.image_alt
    # @book_id = Book.book_id
    # @link = Book.book_link
  end

  def projects
  end

  def playground
    # @user_stocks = User.last.stocks
    @quote = Favorite_Quotes.quote
    @name = Favorite_Quotes.name
  end

end



