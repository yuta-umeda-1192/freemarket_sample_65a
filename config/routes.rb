Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root to: 'top#index'
  resources :items, only: [:index, :update, :new, :edit, :create, :destroy, :show]
  resources :users, only: [:index, :new, :show]
end