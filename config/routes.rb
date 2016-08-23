Rails.application.routes.draw do
  resources :help_items
  resources :tabs
  get 'set_language/english'

  get 'set_language/german'

  get '/dictionary' => 'pages#dictionary'
  get '/help' => 'help_items#index'
  get '/disclaimer' => 'tabs#index'
  get '/notification' => 'notifications#index'
  get 'messages/new'

Rails.application.routes.draw do
  resources :help_items
  resources :tabs
  get 'set_language/english'

  get 'set_language/german'

  scope "(:locale)", locale: /en|de/ do
    root to: "apps#index" 
    get "apps/index"
  end  
end

resources :apps do
  resources :reviews
end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { confirmations: 'confirmations' }
  resources :categories

# Contact
  resources :messages, only: [:new, :create]

  resources :apps do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
    #collection { post :search, to: 'apps#index' }
end
  scope "(:locale)", locale: /en|de/ do
  resources :categories
  get 'store' => 'store#index'
  get 'blind' => 'store#blind'
  get 'sight' => 'store#sight'

  match 'store/:id' => 'store#show', :as => :store_product, :via => :get
end
end