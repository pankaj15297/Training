Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  # get '/user/new', to: 'users#new', as: 'new_user'
  resources :users
end
