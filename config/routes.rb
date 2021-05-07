Rails.application.routes.draw do
  get 'balances/index'
  resources :payments, except: %i[ new create]
  resources :products
  resources :customers do 
   resources :loans, only: %i[ new create]
   resources :payments, only: %i[ new create]
  end
 
  resources :loans, except: %i[ new create] do
    collection do  
      get 'form_product', to: 'loans#form_product', as: 'add_products'
    end
  end




  

 
  #Devise 
  devise_for :admins do 
   get '/admins/sign_out', to: 'devise/sessions#destroy', as:'add_logout'
  end 
  authenticate :admin do
   root to: "customers#index"
  end
end

