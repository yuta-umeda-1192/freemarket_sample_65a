Rails.application.routes.draw do
  devise_for :users, controllers: {
  omniauth_callbacks: 'users/omniauth_callbacks',
  sessions: 'users/sessions'
}
  root to: 'top#index'
  resources :item_exhibit, only: [:index, :create]
  resources :users, only: [:index, :new, :registration]
end