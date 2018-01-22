Rails.application.routes.draw do
  get 'workers/new'

  get 'home/index'
 
  resources :places
  resources :workers
 
  root 'home#index'
end