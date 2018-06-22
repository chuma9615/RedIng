Rails.application.routes.draw do


  get 'activities/index'

  get 'welcome/index'
  resources :articles
  root 'welcome#index'

  resources :users do
    get 'articles' => 'users#articles'
  end


  get 'signup'  => 'users#new'
  resources :users

  get '/login'  => 'sessions#new'
  resources :sessions

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  root 'welcome#index'
  resources :forums do
    post "subscribe" => 'forums#subscribe'
    post "unsuscribe" => 'forums#unsuscribe'
    resources :articles do
      resources :comments do
        member do
        delete "borrar" => 'comments#destroy'
        put "like" => 'comments#upvote'
        put "dislike" => 'comments#downvote'
        end
      end


      end
    end

  resources :forums do
    member do
    delete "borrar" => 'forums#destroy'
    put "follow" => 'forums#follow'
    put "disfollow" => 'forums#unfollow'
    get "vote_sort" => "forums#vote_sort"

    end
    resources :articles do
      member do
        get "vote_sort" => "articles#vote_sort"
        put "like" => "articles#upvote"
        put "dislike" => "articles#downvote"
        delete "borrar" => 'articles#destroy'
      end
    end
  end

end
