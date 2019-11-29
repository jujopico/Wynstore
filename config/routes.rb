Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :items, only: [:index, :show] do 
    resources :reviews, only: [:create]
  end

  resources :carts, only: [:show] do 
    resources :orders, only: [:new, :create]
  end 

  resources :cart_items, only: [:create, :update, :edit, :destroy]
    namespace :admin do
      root 'users#index'
      resources :users, only: [:index]
      resources :orders, only: [:index]
  end

  resources :profiles, only:[:show, :new, :create, :index, :update]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
