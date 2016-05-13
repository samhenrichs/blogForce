Rails.application.routes.draw do

  devise_for :users
  resources :links
  get 'users/index'
  root 'links#index'
  get 'pages/contact'
  get 'pages/home'
  get 'pages/how'
  get 'pages/me'
  get 'pages/oops'

end
