Rails.application.routes.draw do
  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'

  resources :ice_cream_orders
end
