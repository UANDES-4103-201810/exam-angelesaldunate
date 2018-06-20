Rails.application.routes.draw do
  resources :pizza_orders
  resources :recipes
  resources :orders
  resources :delivery_infos
  resources :recipe_ingredients
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
     root 'recipes#index'
  get 'show_unique', to: 'recipe_ingredients#show_unique'
  get 'show_my', to: 'pizza_orders#show_my'
end
