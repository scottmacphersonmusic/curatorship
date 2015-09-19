Rails.application.routes.draw do
  resources :concerts
  resources :artists
  resources :venues
  root 'concerts#index'
end
