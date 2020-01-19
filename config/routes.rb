Rails.application.routes.draw do
  devise_for :users
  root to:"tops#index"
  resources :users
  resources :records
  resources :entered_exiteds,only: [:create,:update,:index]
  resources :tops,only: :index
  resources :informations,only: :index
  namespace :api do
    resources :entered_exiteds,only: [:create,:update,:index], defaults: { format: 'json' }
  end
end