Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'cellphones', to: 'users/registrations#new_cellphone'
    post 'cellphones', to: 'users/registrations#create_cellphone'
  end
  root to: "items#index"
  resources :items
  resources :cards, only: [:index,:new,:show]
end
