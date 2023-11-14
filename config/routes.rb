Rails.application.routes.draw do
  root 'sorts#index', as: 'home'
  get 'random' => 'random#index', as: 'random'
  get 'about_me' => 'pages#about_me', as: 'about'
  get 'developer' => 'pages#developer', as: 'developer'
  get 'another_projects' => 'pages#another_projects', as: 'another_projects'
  get 'future_projects' => 'pages#future_projects', as: 'future_projects'
  get 'see_also' => 'pages#see_also', as: 'see_also'
  get 'platform' => 'pages#platform', as: 'platform'
  get 'resources' => 'pages#resources', as: 'resources'
  get 'contacts' => 'pages#contacts', as: 'contacts'
  get 'sort_random' => 'random#sort'
  get 'support' => 'support#index', as: 'support_index'
  delete 'support/:id/delete' => 'support#destroy', as: 'support_delete'
  get '/support/:id/delete' => 'support#destroy'
  resources :sorts
  resources :random
  resources :support
end
