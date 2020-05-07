Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'
  
  resources :users
  resources :topics
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'  
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'  
end
