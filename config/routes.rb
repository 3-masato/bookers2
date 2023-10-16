Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get "home/about", to: "home#about", as: "about"

  resources :books, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
end
