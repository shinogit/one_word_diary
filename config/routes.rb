Rails.application.routes.draw do

  root 'homes#top'
  get 'homes/about'

  # ------------------------ユーザ側------------------------
  devise_for :users
  scope module: :users do
    resources :users
    resources :words
    resources :comments
    resources :likes, only: [:create, :destroy]
  end
  

  # ------------------------管理者側------------------------
  namespace :admins do
    resources :users
    resources :words
  end

  scope module: :users do
    devise_for :admins
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
