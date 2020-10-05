Rails.application.routes.draw do
  
  root 'homes#top'
  get 'homes/about'

  # ------------------------ユーザ側------------------------
  scope module: :users do
    
  end
  devise_for :users

  # ------------------------管理者側------------------------
  namespace :admins do
    
  end

  scope module: :users do
    devise_for :admins
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
