Rails.application.routes.draw do
  resources :categories
  resources :comments
  devise_for :users
  resources :posts do
    member do
      patch :hide
    end
    resources :comments, only: [ :create, :destroy ]
  end
  root to: "posts#index"
  resources :users
end
