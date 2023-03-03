Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/map", to: "games#map"

  resources :users, only: :show

  resources :games do
    resources :rents, only: %i[new create]
    get "/map", to: "games#show_map"
  end

  resources :rents, only: %i[update]
end
