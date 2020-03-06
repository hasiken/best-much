Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :posts, only: [:new, :create, :show] do
    resources :likes, only: [:create, :destroy]
  end 

  root to: 'posts#index' 

end
