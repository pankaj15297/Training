Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  # get '/user/new', to: 'users#new', as: 'new_user'
  namespace  :admin do
    resources :users, :posts
  end
  # get '/users/:id', to: 'users#show', as: 'show_user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '*path', :to => 'application#routing_error'
end
