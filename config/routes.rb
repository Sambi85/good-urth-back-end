Rails.application.routes.draw do

  resources :farmers
  resources :groups
  resources :items
  resources :item_orders
  resources :markets
  resources :messages
  resources :orders
  resources :reviews
  resources :schedules
  resources :users

end
