Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: :show

  resources :games do
    resources :rents, only: %i[new create]
  end

  resources :rents, only: %i[update]
end
