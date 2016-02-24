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
  match :like, to: 'likes#create', as: :like, via: :post
  match :unlike, to: 'likes#destroy', as: :unlike, via: :post
  match :follow, to: 'follows#create', as: :follow, via: :post
  match :unfollow, to: 'follows#destroy', as: :unfollow, via: :post

  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  # conversations
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
end
