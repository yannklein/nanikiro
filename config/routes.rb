Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :closet, except: [:new, :edit] do
    resources :wears, only: [:create]
  end
  resources :wears, only: [:delete, :update]

end
