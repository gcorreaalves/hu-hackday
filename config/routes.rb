Rails.application.routes.draw do
  devise_for :users
  get 'users/sign_in', to: 'home#soon'
  resources :home, only: :index

  resources :oauth do
    collection do
      get :connect
      get :callback
    end
  end

  resources :media, only: ["create", "destroy"]

  root to: 'home#index'
end
