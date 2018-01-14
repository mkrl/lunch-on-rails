Rails.application.routes.draw do
  get 'home/index'
  
  resources :places
  
  root 'home#index'
end
