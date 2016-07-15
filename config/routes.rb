Rails.application.routes.draw do


  get '/dictionary' => 'pages#dictionary'
  get '/help' => 'pages#help'
  get '/disclaimer' => 'pages#disclaimer'
  get '/notification' => 'notifications#index'
  get 'messages/new'

#mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
#begin translate 
# config/routes.rb
scope "(:locale)", locale: /en|de/ do
  resources :apps
end
# config/routes.rb
Rails.application.routes.draw do

  get '/help' => 'pages#help'
  get '/dictionay' => 'pages#dictionary'
  get 'messages/new'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "apps#index"
end
# end translate 

  devise_for :users
  resources :categories
  resources :apps do
  resources :reviews
  end

# Contact
  resources :messages, only: [:new, :create]

#root 'apps#index'

	resources :apps do

    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end
  scope "(:locale)", locale: /en|de/ do
  resources :categories
  get 'paid' => 'store#paid'
  get 'free' => 'store#free'
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