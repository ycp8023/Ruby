Rails.application.routes.draw do
  put '/products/:id/stars',to: 'products#star',as: 'star'
  put '/transaction_orders/:id/sendprods',to:'transaction_orders#sendprod',as:'sendprod'
  get '/products/stars' ,to: 'products#star#index',as: 'stars'
  # delete '/products/:id/stars',to: 'products#star',as: 'star'
  resources :favorites
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get 'users/index'
  get 'home/index'
  devise_for :admins
  root "home#index"
  resources :product_types
  resources :products do
    resources :designs
    resources :colors
    resources :sizes
    resources :cart_items
    resources :stars
  end
  resources :cart_items do
    resources :transaction_orders do
      resources :transaction_items
    end
  end
  resources :transaction_orders
  resources :likes

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
