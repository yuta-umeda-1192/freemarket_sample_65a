Rails.application.routes.draw do
  root to: 'top#index'
  resources :item_exhibit, only: [:index, :create]
  resources :users, only: [:index, :new, :registration]
end