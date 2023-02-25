Rails.application.routes.draw do
  resources :flights, only: [:index]
  resources :bookings, only: [:new, :create, :show]
  root "flights#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/healthcheck", to: proc { [200, {}, ["success"]] }
end
