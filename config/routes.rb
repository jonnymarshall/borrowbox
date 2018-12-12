Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :dashboard, only: [:index]
  resources :bookings, only: [:index, :new, :create, :edit, :update] do
    resources :reviews, only: [:index]
  end

  get "/items-development", to: "front_end_development#index"
  get "/show-development", to: "front_end_development#show"
end
