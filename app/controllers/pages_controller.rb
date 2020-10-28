class PagesController < ApplicationController

  def home
    @articles = Article.order("created_at desc").limit(3)
    @books = Book.all
    @stocks = Stock.all
    cache = ActiveSupport::Cache::MemoryStore.new
    langs = cache.read('repo_languages')
    puts langs

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
end



