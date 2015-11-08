Rails.application.routes.draw do
  
  resources :comments, only: [:create, :destroy]
  resources :products
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users

  authenticated :user do
  	root to: 'products#index', as: 'home'
  end

  unauthenticated :user do
  	root to: 'visitors#index'
  end

  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
end
