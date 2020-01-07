Rails.application.routes.draw do
  devise_for :users, controllers: {
  omniauth_callbacks: 'users/omniauth_callbacks',
  sessions: 'users/sessions',
  registrations: 'users/registrations'
  }

  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end

  root to: 'top#index'
  resources :items
  resources :users, only: [:index, :new, :show]
end