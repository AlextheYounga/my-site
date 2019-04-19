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
    @projects = Project.all
  end

  def playground
    # @user_stocks = User.last.stocks
    # @favorite_quotes = FavoriteQuote.all
    # @quotes = FavoriteQuote.quote
    # @name = FavoriteQuote.name
  end

end



