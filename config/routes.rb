Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/index' => 'home#index'
  root 'home#index'

  resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  resources :users do
    member do
    get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
end
