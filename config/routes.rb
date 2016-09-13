Rails.application.routes.draw do

  resources :about_us
  #devise
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { confirmations: 'confirmations'}

  #language scope
  scope "(:locale)", locale: /en|de/ do
    root "apps#index" 
  end

  #resources
  resources :help_items
  resources :tabs
  resources :operatingsystems
  resources :language
  resources :about_us

  #Contact
  resources :messages, only: [:new, :create]

  #app resources
  resources :apps do
    resources :reviews, except: [:show, :index]
    collection do
     get 'search'
    end  
  end

  #categories resources
  resources :categories do
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
end