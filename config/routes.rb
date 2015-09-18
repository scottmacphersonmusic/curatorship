Rails.application.routes.draw do
  resources :artists do
    resources :venues
    resources :curatorships
  end
  root 'artists#index'
end
