Rails.application.routes.draw do
  root 'application#home'
  get '/signin', to: 'sessions#sign_in', as: 'signin'
  post '/signin', to: 'sessions#create' 
  delete '/signout', to: 'sessions#destroy'
  get '/rides/new', to: 'rides#new'
  post '/rides/new', to: 'rides#create'
  resources :users, :attractions

end