Rails.application.routes.draw do
  root 'sorts#index', as: 'home'

  get 'about_me' => 'pages#about_me'
  resources :sorts
end
