Rails.application.routes.draw do
  root 'lists#index'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :favorites, only: [:new, :create]
  end
  resources :favorites, only: [:destroy]
end
