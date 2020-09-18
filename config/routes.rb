Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :create, :update, :destroy] do
    resources :artworks, only: :index do
        get 'likes', on: :collection
    end

    resources :comments, only: :index do
        get 'likes', on: :collection
    end
  end

  resources :artworks, only: [:show, :create, :update, :destroy] do
    get 'likers', on: :member

    resources :comments, only: :index
  end
  
  resources :artwork_shares, only: [:create, :destroy]  
  resources :comments, only: [:create, :destroy]
  resources :likes, only: [:create]
end
