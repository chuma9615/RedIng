Rails.application.routes.draw do
  root 'welcome#index'
  resources :forums do
    resources :articles do
      resources :comments

      end
    end
  end
