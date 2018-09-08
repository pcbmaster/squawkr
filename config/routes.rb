Rails.application.routes.draw do
  devise_for :users
  
  root 'users#index'
  get 'posts', to: 'users#index'

  resources :bios
  resources :comments
  resources :posts
  resources :users

end
