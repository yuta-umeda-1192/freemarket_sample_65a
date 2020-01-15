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
  resources :items do
    resources :card_buy, only: [:show, :create] do 
    end
  end
  resources :users, only: [:index, :new, :show] do
    collection do
      get 'mypage'
      get 'mypage/profile'
      get 'mypage/idenfication'
      get 'mypage/logout'
      get 'mypage/credit_page'
    end
  end
  resources :card
  resources :searches, only: [:index] do
    collection do
      get 'detail_search'
    end
  end
  resources :top, only: [:show]
end
