Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  get '/search', to: 'items#search'

  resources :dashboard, only: [:index]
  resources :bookings, only: [:index, :new, :create, :edit, :update] do
    resources :reviews, only: [:index]
  end
end
