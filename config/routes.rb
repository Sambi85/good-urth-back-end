Rails.application.routes.draw do

  resources :orders
  resources :messages
  resources :reviews
  resources :item_orders
  resources :items
  resources :tents
  resources :markets
  resources :farmers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
