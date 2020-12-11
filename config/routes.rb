Rails.application.routes.draw do
    resources :users do 
      resources :post 
  end
end
