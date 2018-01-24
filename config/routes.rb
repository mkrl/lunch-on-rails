Rails.application.routes.draw do
  get 'sessions/new'

  get 'workers/new'
  
  get 'signup', to: 'workers#new', as: 'signup'

  get 'home/index'
 
  resources :places
  resources :workers
  resources :sessions
 
  root 'home#index'
end