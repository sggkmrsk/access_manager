Rails.application.routes.draw do
  devise_for :users
  root to:"tops#index"
  resources :users
  resources :records
  resources :tops,only: :index
  resources :informations,only: [:index,:update]
  resources :entered_exiteds,only: [:create,:update,:index]
  namespace :api do
    resources :entered_exiteds,only: [:create,:update,:index], defaults: { format: 'json' }
    resources :idms,only: :update, defaults: { format: 'json' }
  end
end