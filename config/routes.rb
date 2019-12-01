Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  get 'profile', to: 'user#show'
  root 'welcome#index'
  resources :welcome, only: [:index, :show]
  resources :items, only: [:index, :show] do 
    resources :reviews, only: [:create]
end
resources :carts, only: [:show] do 
  resources :orders, only: [:new, :create]
end 
resources :cart_items, only: [:create, :update, :edit, :destroy]
  namespace :admin do
    root 'users#index'
    resources :users, only: [:index, :show] do 
      member do
    resources :orders, only: [:index, :show]
      end
  end
end
  
  resources :profiles, only:[:show, :new, :create, :index, :update]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
