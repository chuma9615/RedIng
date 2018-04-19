
Rails.application.routes.draw do

  get 'welcome/index'
  resources :articles
  root 'welcome#index'

  get 'signup'  => 'users#new'
  resources :users

  get '/login'  => 'sessions#new'
  resources :sessions

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'
  
end
