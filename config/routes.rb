Rails.application.routes.draw do
  get 'users/index'
  require "sidekiq/web"
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end
  resources :statuses
  resources :equipments
  resources :characters
  resources :skills
  resources :powers
  resources :races
  resources :permissions
  resources :users
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
  }, path: "/auth"
end
