Rails.application.routes.draw do
  resources :statuses
  resources :equipment
  resources :characters
  resources :habilities
  resources :powers
  resources :races
  resources :permissions
  get 'home/index'
  get 'home/contact'
  get 'home/mipage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
end
