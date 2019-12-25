Rails.application.routes.draw do
  root to: 'top#index'
  resources :items, only: [:new, :create]
  resources :users, only: [:index, :new, :registration]
end