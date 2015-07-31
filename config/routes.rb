Rails.application.routes.draw do
  devise_for :users

  resources :home, only: :index

  resources :user_instagram, only: [:new, :create]

  resources :oauth do
    collection do
      get :connect
      get :callback
    end
  end

  resources :media, only: ["create", "destroy"]

  root to: 'home#index'
end
