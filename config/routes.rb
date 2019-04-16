Rails.application.routes.draw do
  resources :events
  resources :users
  get '/get_user', to: 'users#get_user'
  post '/login', to: 'auth#create'
  get '/appointments', to: 'appointments#index'
  post '/appointment', to: 'appointments#create'
end
