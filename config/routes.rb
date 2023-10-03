Rails.application.routes.draw do
  resources :lenders, only: %i[index show]
  resources :loans, only: %i[new create edit update destroy]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "lenders#index"
end
