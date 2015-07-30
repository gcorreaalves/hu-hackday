Rails.application.routes.draw do
  resources :home, only: :index

  resources :oauth do
    collection do
      get :connect
      get :callback
    end
  end

  root to: 'home#index'
end
