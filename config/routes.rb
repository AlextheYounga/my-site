Rails.application.routes.draw do

  match "*path" => redirect("https://www.alextheyounger.me/%{path}"), :constraints => { :protocol => "http://" }
  match "*path" => redirect("https://www.alextheyounger.me/%{path}"), :constraints => { :subdomain => "" }

  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'readinglist', to: 'pages#readinglist'
  get 'quotes', to: 'pages#quotes'
  get 'projects', to: 'pages#projects'
  get 'resources', to: 'pages#resources'
  get 'search_stocks', to: 'stocks#search'

  resources :articles, except: [:signup]

  # get 'signup', to: 'users#signup'
  resources :users, except: [:signup]

  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
  resources :posts, only: [:index]

end
