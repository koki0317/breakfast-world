Rails.application.routes.draw do
  root 'lists#index'
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :favorites, only: [:new, :create, :edit] do
    end
  end
  resources :favorites, only: [:destroy]
end
