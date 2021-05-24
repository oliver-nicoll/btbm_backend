Rails.application.routes.draw do
  # resources :orders
 
  resources :products, only: [:index]
  
  namespace :api do
    namespace :v1 do
      resources :markets, only: [:index, :create]
    end
  end
  
end
