Rails.application.routes.draw do
  resources :trips  do 
      resources :destinations
  end
  get '/map', to: 'destinations#map'
  get '/distance', to: 'home#distance'
  get '/distance', to: 'destinations#distance'
  post '/distance', to: 'destinations#distance'
  devise_for :users
  root 'home#pages'
  # root 'trips#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
