Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to:"tops#index"
  resources :users,only: [:index,:edit,:update]
  resources :admins
  resources :tops,only: :index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
