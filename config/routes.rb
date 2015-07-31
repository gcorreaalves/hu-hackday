Rails.application.routes.draw do
  devise_for :users

  resources :home, only: :index
  resources :collections, only: :show

  resources :user_instagram, only: [:new, :create]

  resources :oauth do
    collection do
      get :connect
      get :callback
    end
  end

  resources :media, only: [:create, :destroy] do
    member do
      get :download
      post :black_list
    end
  end

  root to: 'home#index'
end
