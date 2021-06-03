Rails.application.routes.draw do
  root to: 'static_pages#top'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
  resources :boards do
    resources :comments, only: %i[create destroy], shallow: true
    collection do
      get :bookmarks
    end

    collection do
      get :search
    end
  end
  resources :bookmarks, only: %i[create destroy]
  resource :profile, only: %i[edit show update]
  resources :password_resets, only: %i[new create edit update]

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
