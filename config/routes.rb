Rails.application.routes.draw do
  
  devise_for :users
  
  get 'home_controller/index'

  root 'home_controller#index'
end
