Rails.application.routes.draw do
  # resources :orders
  
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :create, :show]
    end
  end
  
end
