Rails.application.routes.draw do
  root to: 'testtop#index'
  resources :users, only: [:index, :new, :registration]
end