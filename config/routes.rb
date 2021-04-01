Rails.application.routes.draw do
  root to: 'static_pages#top'
  resources :static_pages
end
