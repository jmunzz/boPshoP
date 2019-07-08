Rails.application.routes.draw do
  root "users#new"
  resources :users do
    resources :records do
      resources :receipts
    end
  end
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
