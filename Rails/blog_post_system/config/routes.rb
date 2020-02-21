Rails.application.routes.draw do
  # get '/user/new', to: 'users#new', as: 'new_user'
  resources :users
end
