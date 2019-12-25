Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  root to: 'top#index'
  resources :item_exhibit, only: [:index, :create]
  resources :users, only: [:index, :new, :registration]
end