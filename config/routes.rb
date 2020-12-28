Rails.application.routes.draw do
  devise_for :users
  root "tweets#index"
  resources :tweets, only: [:index] do
    collection do
      get "create"
      get "notification"
      get "topic"
      get "message"
      get "bookmark"
      get "list"
      get "profile"
      get "info"
    end
    member do
      get "like"
    end
  end
  resources :users, only: [:show] do
    member do
      get "follow"
    end
  end
end
