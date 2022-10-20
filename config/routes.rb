Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :closets, except: [:new, :edit] do
    resources :wears, only: [:create]
    resources :todays_items, only: [:create]
  end
  resources :wears, only: [:delete, :update]

end
