Rails.application.routes.draw do

  root 'homes#top'
  get 'homes/about'

  # ------------------------ユーザ側------------------------

  scope module: :users do
    devise_for :users
    resources :users
    resources :words do
    get :calender, on: :member 
    end
    resources :comments
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
