Rails.application.routes.draw do
  devise_for :owners
  devise_for :users
  root to: 'pages#home'
  resources :dogs, only: [:index, :show, :edit, :update, :delete]
  resources :owners, only: [:show] do
    resources :dogs, only: [:new, :create]
  end
  resource :profile, only: [:show, :edit, :update]
end
