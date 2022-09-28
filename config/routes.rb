Rails.application.routes.draw do
  root 'pages#landing'

  get 'home', to: 'pages#home', as: :home
  resources :tasks
  resources :categories
  devise_for :users
end
