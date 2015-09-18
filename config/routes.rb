Rails.application.routes.draw do
  resources :events
  resources :artists
  resources :venues
  root 'artists#index'
end
