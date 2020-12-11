Rails.application.routes.draw do
  use_doorkeeper
    resources :users do 
      resources :post 
  end
end
