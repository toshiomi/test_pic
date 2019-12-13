Rails.application.routes.draw do
  devise_for :users
  resources :tweets do
    resources :likes, only: [:new, :destroy]
  end
  resources :users
  root 'tweets#index'
end
