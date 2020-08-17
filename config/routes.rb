Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, except: :index do
    resources :skills, only: [:index, :new, :edit, :create, :destroy, :update]
    # resources :reviews, only: [:index, :new, :edit, :create, :destroy, :update]
    resources :bookings, only: [:index, :new, :create, :destroy, :show]
    # resources :messages, only: [:index, :new, :edit, :create, :destroy, :update]  
  end
end
