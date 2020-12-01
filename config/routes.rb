Rails.application.routes.draw do
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
  end
end
