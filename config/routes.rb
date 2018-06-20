Rails.application.routes.draw do
  resources :orders
  resources :delivery_infos
  resources :recipe_ingredients
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
     root 'application#home'
end
