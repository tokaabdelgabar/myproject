Rails.application.routes.draw do


#mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
#begin translate 
# config/routes.rb
scope "(:locale)", locale: /en|de/ do
  resources :apps
end
# config/routes.rb
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "apps#index"
end
# end translate 

  devise_for :users
  resources :categories
  resources :apps do
  	resources :reviews
  end
  #root 'apps#index'

	resources :apps do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end

  
  resources :categories
  get 'paid' => 'store#paid'
  get 'free' => 'store#free'
  get 'store' => 'store#index'
  get 'desc' => 'store#desc'

  match 'store/:id' => 'store#show', :as => :store_product, :via => :get



end
