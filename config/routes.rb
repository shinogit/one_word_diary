Rails.application.routes.draw do

  root 'homes#top'
  get 'homes/about'

  # ------------------------ユーザ側------------------------
  scope module: :users do
    devise_for :users
    resources :users do
    end

    resources :words do
      get :calender, on: :member 
      resources :comments, only: [:create, :destroy]
    end
    
    resources :likes, only: [:create, :destroy]
    resources :contacts 
    
  end
  
  # ------------------------管理者側------------------------
  namespace :admins do
    resources :users
    resources :words
    resources :contacts
  end

  scope module: :admins do
    devise_for :admins
  end

end
