Diner::Application.routes.draw do

  # resources :rsvps
  # resources :guests
  # resources :authentications
  # devise_for :users
  # get 'auth/:provider/callback' => 'authentications#create'

  # root 'home#index'
  root 'home#coming_soon'
  get '/home' => 'home#index'
end
