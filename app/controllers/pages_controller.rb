load "app/modules/language_stats.rb"

include LanguageStats
class PagesController < ApplicationController
  def home
    @books = Book.all
    @stocks = Stock.all
    @languageStats = LanguageStats::calculateWidths()


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



