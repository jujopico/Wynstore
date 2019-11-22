Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  get 'hello_world', to: 'hello_world#index'
  get 'items/index'
  root 'welcome#index'
  resources :items, only: [:index, :show] do 
    resources :reviews, only: [:create]
end
  namespace :admin do
    root 'users#index'
    resources :users, only: [:index]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
