Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :posts, only: [:new, :create, :show] do
    collection do
      get 'short'
    end

    collection do
      get 'long'
    end
    resources :likes, only: [:create, :destroy]
  end 
  resources :images, only: [:index]
  root to: 'posts#index' 

end
