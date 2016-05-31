Rails.application.routes.draw do

  get 'home/Home'

  devise_for :users
  resources :links
  resources :campaigns
  get 'users/index'
  root 'links#index'
  get 'pages/contact'
  get 'pages/home'
  get 'pages/how'
  get 'pages/oops'
  get 'pages/notyours'
  get 'pages/list'

end
