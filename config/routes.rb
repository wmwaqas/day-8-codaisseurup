Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users
  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :categories, only: [:new, :edit, :create, :update]

  namespace :api do
    resources :events
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
