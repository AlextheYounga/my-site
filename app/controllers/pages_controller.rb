class PagesController < ApplicationController
  def home
    @projects = Project.order(:position)
    @stocks = Stock.all
    @languageStats = GithubLanguage.calculateWidths

    set_meta_tags title: "Home",
                  site: "alextheyounger.me",
                  description: "Alex Younger - My Space on the Internet",
                  reverse: true,
                  image_src: "#{Rails.root}/assets/hammock-art.jpg",
                  og: {
                    title: "Home",
                    description: "Alex Younger - My Space on the Internet",
                    type: "website",
                    image: "#{Rails.root}/assets/hammock-art.jpg",
                    reverse: true,
                  }
  end
end
