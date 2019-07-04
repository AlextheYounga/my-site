require 'rubygems'
require 'rss'
require 'iex-ruby-client'

class PagesController < ApplicationController

  def home
    @articles = Article.order("created_at desc").limit(3)
    @books = Book.all
    @stocks = Stock.all

    set_meta_tags title: 'Home',
    site: 'alextheyounger.me',
    description: 'Alex Younger - My Space on the Internet',
    reverse: true,
    og: {
      title: 'Home',
      description: 'Alex Younger - My Space on the Internet', 
      type: 'website',
      image: '<%= image_path("hammock-art.png") %>',
      reverse: true
    }
  end

  def about
    set_meta_tags title: 'About Me',
    site: 'alextheyounger.me',
    description: 'Alex Younger - My Story',
    reverse: true,
    og: {
      title: 'About Me',
      description: 'Alex Younger - My Story', 
      type: 'website',
      image: '<%= image_path("hammock-art.png") %>',
      reverse: true
    }
  end

  def readinglist
    @books = Book.all

    set_meta_tags title: 'Reading List',
    site: 'alextheyounger.me',
    description: 'Alex Younger - My Reading List. A list of books that have impacted my life in some way.',
    reverse: true,
    og: {
      title: 'About Me',
      description: 'Alex Younger - My Reading List. A list of books that have impacted my life in some way.', 
      type: 'website',
      image: '<%= image_path("hammock-art.png") %>',
      reverse: true
    }
  end

  def quotes
    @favorite_quotes = FavoriteQuote.all

    set_meta_tags title: 'Quotes Libary',
    site: 'alextheyounger.me',
    description: 'Alex Younger - My Quotes Collection. A collection of quotes that I find useful to remember.',
    reverse: true,
    og: {
      title: 'Quotes Libary',
      description: 'Alex Younger - My Quotes Collection. A collection of quotes that I find useful to remember.', 
      type: 'website',
      image: '<%= image_path("hammock-art.png") %>',
      reverse: true
    }
  end

  def projects
    @projects = Project.all

    set_meta_tags title: 'Projects',
    site: 'alextheyounger.me',
    description: 'Alex Younger - My Projects. A list of projects that have my name somewhere on them.',
    reverse: true,
    og: {
      title: 'Projects',
      description: 'Alex Younger - My Projects. A list of projects that have my name somewhere on them.', 
      type: 'website',
      image: '<%= image_path("hammock-art.png") %>',
      reverse: true
    }
  end

  def resources
    @stocks = Stock.all
    @countries = Country.all
    
    set_meta_tags title: 'Resources',
    site: 'alextheyounger.me',
    description: 'Alex Younger - Resources. A collection of my own research, interesting information and ideas.',
    reverse: true,
    og: {
      title: 'Resources',
      description: 'Alex Younger - Resources. A collection of my own research, interesting information and ideas.', 
      type: 'website',
      image: '<%= image_path("hammock-art.png") %>',
      reverse: true
    }
  end

end



