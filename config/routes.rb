Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if (Rails.env.production?)
    match "*path" => redirect("https://www.alextheyounger.me/%{path}"), :constraints => { :protocol => "http://" }
    match "*path" => redirect("https://www.alextheyounger.me/%{path}"), :constraints => { :subdomain => "" }
  end

  mount Ckeditor::Engine => "/ckeditor"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"

  resources :users, except: [:signup]
  resources :articles, except: [:signup]
  resources :categories, except: [:destroy]
  resources :books, except: [:signup]
  resources :projects, except: [:signup]
  # resources :research, except: [:signup]
  resources :book_categories
  resources :posts, only: [:index]
  resources :stocks

  get "login", to: "sessions#login"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  # get "resources", to: "pages#resources"
  # get "projects", to: "pages#projects"
  # get 'signup', to: 'users#signup'
  # get 'readinglist', to: 'pages#readinglist'
  # get "quotes", to: "pages#quotes"
  # get "about", to: "pages#about"
  # get "search_stocks", to: "stocks#search"

end
