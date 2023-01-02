Rails.application.routes.draw do
  resources :favorites

  get 'home/index'
  devise_for :admins
  devise_for :users
  root "home#index"
  resources :product_types
  resources :products do
    resources :designs
    resources :colors
    resources :sizes
    resources :cart_items
  end
  resources :cart_items do
    resources :transaction_orders do
      resources :transaction_items
    end
  end
  resources :transaction_orders

  # resources :users do
  #   collection do
  #     get 'login'
  #     post 'do_login'
  #     get 'logout'
  #   end
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
