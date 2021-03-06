Rails.application.routes.draw do
  devise_for :users
  put 'users/consultant', to: 'users#consultant_true', as: :consultant
  put '/users/not_consultant', to: 'users#consultant_false', as: :consultant_false
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/user/profile", to: "users#profile", as: "profile"
  resources :users do
    # resources :skills, only: [:index, :new, :edit, :create, :destroy, :update]
    # resources :reviews, only: [:index, :new, :edit, :create, :destroy, :update]
    resources :bookings, only: [:new, :create]
    # resources :messages, only: [:index, :new, :edit, :create, :destroy, :update]  
  end
  resources :bookings, only: [:index, :show, :destroy]
end
