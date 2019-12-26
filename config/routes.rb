Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root to: 'top#index'
  resources :items, only: [:new, :create]
  resources :users, only: [:index, :new, :registration]
  resources :item_details, only: [:index, :show]
end