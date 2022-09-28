Rails.application.routes.draw do
  root 'pages#landing'

  resources :tasks
  resources :categories
  devise_for :users
end
