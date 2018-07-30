Rails.application.routes.draw do
  
  resources :characters
  devise_for :users
  
  get 'home_controller/index'

  root 'home_controller#index'
end
