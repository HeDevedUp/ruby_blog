Rails.application.routes.draw do
  # --- GET ---
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create] do
      resources :comments, only: [:create]
      resources :likes, only: [:create]
    end
  end

  resources :main, only: [:index]

  root to: 'users#index'
end
