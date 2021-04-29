Rails.application.routes.draw do
  get 'balances/index'
  resources :payments
  resources :customers
  resources :products
  resources :loans do
    collection do  
      get 'form_product', to: 'loans#form_product', as: 'add_products'
    end
  end

  devise_for :admins
  root to: "customers#index"
  
  authenticate :admin do
    resources :customers
  end
end

