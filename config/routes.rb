Rails.application.routes.draw do
  resources :reviews
  resources :users, only:[:index, :show]
  resources :teslas, only:[:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
