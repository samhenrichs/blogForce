Rails.application.routes.draw do

  devise_for :users
  root 'pages#home'
  get 'pages/contact'
  get 'pages/home'
  get 'pages/how'
  get 'pages/me'

end
