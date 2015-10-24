Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :movies


  get '/items/:itemid/rating/:rating' => 'items#rate', as: :rate_item

  root 'movies#index'

end
