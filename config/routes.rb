Rails.application.routes.draw do
  root to: 'top#index'
  resources :item_exhibit, only: [:create]
  resources :users, only: [:index, :new, :registration]
  resources :item_details, only: [:index, :show]
end