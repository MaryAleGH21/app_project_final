Rails.application.routes.draw do
  resources :customers
  resources :products
  devise_for :admins
  root to: "customers#index"

  authenticate :admin do
    resources :customers
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
