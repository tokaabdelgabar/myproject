Rails.application.routes.draw do

  #devise
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { confirmations: 'confirmations' }

  #language scope
  scope "(:locale)", locale: /en|de/ do
    root "apps#index" 
  end

  #matching
  match 'store/:id' => 'store#show', :as => :store_product, :via => :get

  #resources
  resources :help_items
  resources :tabs
  resources :categories
  resources :operatingsystem
  resources :language

  #Contact
  resources :messages, only: [:new, :create]

  #app resources
  resources :apps do
    #collection { post :search, to: 'store#index' }
    resources :reviews, except: [:show, :index]
    #collection {get :search, to: 'store#show'}
    #collection do
     #get 'search'
    #end  
  end

  resources :stores do
    collection {get :search, to: 'store#show'}
    collection do
     get 'search'
    end
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
  get 'store' => 'store#index'
end