Rails.application.routes.draw do
    resources :users do 
      resources :media 
  end
end
