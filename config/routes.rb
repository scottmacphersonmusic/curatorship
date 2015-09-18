Rails.application.routes.draw do
  resources :artists
  resources :venues
  root 'artists#index'
end
