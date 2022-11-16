Rails.application.routes.draw do
  resources :tasks
  resources :categories
  devise_for :users
  root 'categories#index'
end
