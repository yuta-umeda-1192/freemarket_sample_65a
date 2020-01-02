Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  root to: 'top#index'
  resources :items, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :registration]
end