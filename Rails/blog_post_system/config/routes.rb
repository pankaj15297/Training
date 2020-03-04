Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  # get 'admin/:id/users', to: 'admin/users#soft_delete', as: 'admin_soft_delete'
  
  namespace  :admin do
    resources :users, :posts
  end
  patch 'admin/users/:id/soft_delete', to: "admin/users#soft_delete", as: "user_soft_delete"
  get '*path', :to => 'application#routing_error'
end
