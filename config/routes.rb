Rails.application.routes.draw do
  resources :orders
  # resources :products
  namespace :api do
    namespace :v1 do
      resources :markets, only: [:index]
    end
  end
  
end
