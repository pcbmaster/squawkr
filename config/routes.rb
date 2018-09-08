Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  get 'posts/show'
  get 'posts/create'
  get 'posts/destroy'
  get 'bios/create'
  get 'bios/show'
  get 'bios/edit'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
