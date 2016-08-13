Rails.application.routes.draw do

  resources :tabs
  get 'set_language/english'

  get 'set_language/german'

  get '/dictionary' => 'pages#dictionary'
  get '/help' => 'pages#help'
  get '/disclaimer' => 'tabs#index'
  get '/notification' => 'notifications#index'
  get 'messages/new'



 # resources :apps
#end

Rails.application.routes.draw do
  resources :tabs
  get 'set_language/english'

  get 'set_language/german'

  scope "(:locale)", locale: /en|de/ do
    root to: "apps#index" 
    get "apps/index"
  end  
end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  devise_for :users
  resources :categories
  resources :apps do
  resources :reviews
  end

# Contact
  resources :messages, only: [:new, :create]
	resources :apps do

    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end
  scope "(:locale)", locale: /en|de/ do
  resources :categories
  get 'store' => 'store#index'
  get 'desc' => 'store#desc'
  get 'blind' => 'store#blind'
  get 'sight' => 'store#sight'
  get 'motorical' => 'store#motorical'
  get 'learning' => 'store#learning'
  get 'hearing' => 'store#hearing'

  match 'store/:id' => 'store#show', :as => :store_product, :via => :get
end
end