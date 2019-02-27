Rails.application.routes.draw do
  devise_for :owners
  devise_for :users
  root to: 'pages#home'
  resources :dogs, only: [:index, :show, :edit, :update, :delete] do
    resources :playdates, only: [:new, :create]
  end
  resources :users, only: [:show]
  resources :owners, only: [:show] do
    resources :dogs, only: [:new, :create]
  end
  resource :profile, only: [:show, :edit, :update]
  resources :playdates, only: [:index, :show]
end
