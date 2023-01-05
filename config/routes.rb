Rails.application.routes.draw do
  resources :trips  do 
  resources :destination
end
get '/map', to: 'destination#map'

  devise_for :users
  root 'home#pages'
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
