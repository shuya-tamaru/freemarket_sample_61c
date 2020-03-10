Rails.application.routes.draw do
  get 'personal_informations/index'
  get 'create_accounts/index'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'cellphones', to: 'users/registrations#new_cellphone'
    post 'cellphones', to: 'users/registrations#create_cellphone'
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get 'cards', to: 'users/registrations#new_card'
    post 'cards', to: 'users/registrations#create_card'
  end
  root to: "items#index"
  resources :items
  resources :users, only: [:index, :show]
  resources :categorized_items, only: [:index]
  resources :branded_items, only: [:index]
  resources :credit_cards, only: [:index,:new,:show] do
    collection do
      post 'show', to: 'credit_cards#show'
      post 'pay', to: 'credit_cards#pay'
      post 'delete', to: 'credit_cards#delete'
    end
  end
  resources :create_accounts, only: [:index]
  resources :myinfomations, only: [:index]
  resources :notifications, only: [:index]
  resources :todos, only: [:index]
  resources :likes, only: [:index]
  resources :products, only: [:index, :new, :show, :edit, :update]
  resources :trading_products, only: [:index]
  resources :sold_products, only: [:index]
  resources :trading_items, only: [:index]
  resources :bought_items, only: [:index]
  resources :news, only: [:index]
  resources :reviews, only: [:index]
  resources :guides, only: [:index]
  resources :supports, only: [:index]
  resources :sales, only: [:index]
  resources :points, only: [:index]
  resources :profiles, only: [:edit]
  resources :orders, only: [:new, :edit, :update] do
    member do
      get 'new', to: 'orders#new'
      post 'pay', to: 'orders#pay'
      get 'done', to: 'orders#done'
    end
  end
  resources :products, only: [:new, :create, :show, :edit, :update, :delete]
end
