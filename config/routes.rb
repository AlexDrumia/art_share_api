Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :create, :update, :destroy] do
    resources :artworks, only: :index
    resources :comments, only: :index
    resources :collections, only: :index
  end

  resources :artworks, only: [:show, :create, :update, :destroy] do
    member do
      post :like
      post :unlike
      post :favorite
      post :unfavorite 
    end

    resources :comments, only: :index
  end

  resources :comments, only: [:create, :destroy] do
    member do
      post :like
      post :unlike
    end
  end
  
  resources :artwork_shares, only: [:create, :destroy] do
    member do
      post :favorite
      post :unfavorite 
    end
  end

  resources :collections, only: [:show, :create, :destroy] do
    resources :artworks, only: :index do
      post :add, to: 'collections#add_artwork', as: 'add'
      delete :remove, to: 'collections#remove_artwork', as: 'remove'
    end
  end
end
