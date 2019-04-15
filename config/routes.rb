Rails.application.routes.draw do
  resources :events
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/appointments', to: 'appointments#index'
  post '/appointment', to: 'appointments#create'
end
