Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  resources :dashboard, only: [:index]
  resources :bookings, only: [:update] do
    resources :reviews, only: [:index]
  end
  get "/", to: "front_end_development#homepage-search"

  get "/items-development", to: "front_end_development#index"
  get "/show-development", to: "front_end_development#show"
  get "/dashboard-development", to: "front_end_development#dashboard"
end
