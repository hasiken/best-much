Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :posts, only: [:new, :create, :show] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: :create
    collection do
      get 'short'
    end

    collection do
      get 'long'
    end

    collection do
      get 'middle'
    end
  end 
  resources :images, only: [:index]
  root to: 'posts#index' 

end
