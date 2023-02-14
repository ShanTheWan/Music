Rails.application.routes.draw do
  devise_for :guests
  get 'users/new'
  get 'users/create'
  get 'sessions/new'
  get 'sessions/create'
  resources :tracks, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  root "tracks#index"
end