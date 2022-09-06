Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :users, only: [:show]
  resources :books, only: [:index, :new, :create, :show] do
    resource :mentalmaps, only: [:new, :create]
    resource :quriosity_gaps, only: [:new, :create]
  end
end
