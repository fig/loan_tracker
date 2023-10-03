Rails.application.routes.draw do
  resources :lenders, only: %i[index show]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "lenders#index"
end
