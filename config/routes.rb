Rails.application.routes.draw do
  root 'sorts#index', as: 'home'
  get 'random' => 'pages#random', as: 'random'
  get 'support' => 'pages#support', as: 'support'
  get 'about_me' => 'pages#about_me', as: 'about'
  get 'developer' => 'pages#developer', as: 'developer'
  resources :sorts
end
