Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"
  get "projects", to: "pages#projects"
  get "resources", to: "pages#resources"

  resources :users, except: [:signup]
  resources :articles, except: [:signup]
  resources :categories, except: [:destroy]
  resources :books, except: [:signup]
  resources :book_categories
  resources :posts, only: [:index]
  resources :stocks

  get "login", to: "sessions#login"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  # get 'signup', to: 'users#signup'
  # get 'readinglist', to: 'pages#readinglist'
  # get "quotes", to: "pages#quotes"
  # get "about", to: "pages#about"
  # get "search_stocks", to: "stocks#search"
end
