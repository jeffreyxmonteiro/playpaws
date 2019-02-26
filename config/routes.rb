Rails.application.routes.draw do
  devise_for :owners
  devise_for :users
  root to: 'pages#home'
  resources :dogs, only: [:index, :show]
  resources :owners, only: [:show] do
    resources :dogs, only: [:new, :create]
  end
end
