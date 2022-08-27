Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :users, only: [:show]
  resources :books, only: [:index, :new, :create, :show] do
    resources :mentalmaps, only: :create
  end
end
