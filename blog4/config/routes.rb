Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root :to => 'blogs#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
