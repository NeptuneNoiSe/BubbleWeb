Rails.application.routes.draw do
  root 'sorts#index'

  get 'about_me' => 'pages#about_me'
  resources :sorts
end
