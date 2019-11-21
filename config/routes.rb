Rails.application.routes.draw do
  devise_for :users
  get 'hello_world', to: 'hello_world#index'
  root 'items#index'
  resources :items, only: [:index, :show] do 
    resources :reviews, only: [:create]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
