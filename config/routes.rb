Rails.application.routes.draw do
  devise_for :users

  get "/painel", to: 'home#index'
  resources :home, only: :index
  resources :collections, only: [:show, :index]

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

  get "/landscape", to: 'home#landscape'

  root to: 'user_instagram#new'
end
