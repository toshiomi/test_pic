Rails.application.routes.draw do
  devise_for :users
  resources :tweets do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:new, :destroy]
    collection do
      get :search
    end
  end
  resources :users,only: [:show]
  root 'tweets#index'
end
