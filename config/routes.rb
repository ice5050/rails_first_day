Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/show/:id', to: 'users#show', as: 'users_show'
  get '/users/new', to: 'users#new', as: 'users_new'
  post '/users/create', to: 'users#create', as: 'users_create'
  get '/users/log_in', to: 'users#log_in', as: 'users_log_in'
  post '/users/create_session', to: 'users#create_session', as: 'users_create_session'
end
