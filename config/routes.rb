Rails.application.routes.draw do
 
  
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show]
      resources :orders, only: [:show, :create]
    end
  end
  
end
