Rails.application.routes.draw do

  #devise
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { confirmations: 'confirmations' }

  #language scope
  scope "(:locale)", locale: /en|de/ do
    root to: "apps#index" 
    get "apps/index"
    match 'store/:id' => 'store#show', :as => :store_product, :via => :get
  end

  #resources
  resources :help_items
  resources :tabs
  resources :categories
  resources :apps do
    resources :reviews
  end
  #Contact
  resources :messages, only: [:new, :create]

  resources :apps do
    collection do
      get 'search'
    end
  resources :reviews, except: [:show, :index]
    collection { post :search, to: 'apps#index' }
  end

  #language
  get 'set_language/english'
  get 'set_language/german'

  #get parameter, TODO: please remove them
  get '/dictionary' => 'pages#dictionary'
  get '/help' => 'help_items#index'
  get '/disclaimer' => 'tabs#index'
  get '/notification' => 'notifications#index'
  get 'messages/new'
  get 'pages/news'
end