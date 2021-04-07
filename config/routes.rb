Rails.application.routes.draw do
  root to: 'static_pages#top'
<<<<<<< HEAD
  resources :static_pages

  root to: 'users#index'
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => 'user_sessions#create'
  post 'logout' => 'user_sessions#destroy', :as => :logout
=======

  get 'login', to: 'user_sessions#new'
   post 'login', to: 'user_sessions#create'
   delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
>>>>>>> f71a5e6... Add: i18nの設定の追加
end
