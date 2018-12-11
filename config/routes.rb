Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :show]
  resources :dashboard, only: [:index]
  resources :bookings, only: [:index, :new, :create, :edit, :update] do
    resources :reviews, only: [:new, :index, :create]
  end
end
