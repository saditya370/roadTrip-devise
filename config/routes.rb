Rails.application.routes.draw do
  resources :trips  do 
      resources :destination
  end
  get '/map', to: 'destination#map'
  get '/distance', to: 'home#distance'
  get '/distance', to: 'destination#distance'
  post '/distance', to: 'destination#distance'
  devise_for :users
  root 'home#pages'
  # root 'trips#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
