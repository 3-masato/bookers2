Rails.application.routes.draw do
  get 'books/show'
  get 'books/index'
  get 'users/show'
  get 'users/edit'
  get 'users/index'
  devise_for :users
  root to: 'home#top'
  get "home/about", to: "home#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
