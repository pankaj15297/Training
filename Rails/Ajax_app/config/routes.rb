Rails.application.routes.draw do
  resources :students
  # get 'products/index'
  # get 'models/index'

  patch 'products/:id/active', to: "products#active", as: "product_active"
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
