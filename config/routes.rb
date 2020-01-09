Rails.application.routes.draw do
  # devise_for :users, controllers: {
  #   registrations: 'users/registrations',
  # }
  # root to: 'card#card'
  # resources :item_exhibit, only: [:index, :create]
  # resources :users, only: [:index, :new, :registration]
    devise_for :users, controllers: {
    # omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
    }
  
    devise_scope :user do
      get 'addresses', to: 'users/registrations#new_address'
      post 'addresses', to: 'users/registrations#create_address'
    end
  
    root to: 'top#index'
    resources :items, only: [:index, :new, :create, :destroy, :show] do
      resources :card_buy, only: [:show, :create] do 
      end
    end
    resources :users, only: [:index, :new, :show]
    resources :item_details, only: [:index, :show]
    resources :card
    end
    
    
    