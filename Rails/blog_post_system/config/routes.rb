Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  # get 'admin/:id/users', to: 'admin/users#soft_delete', as: 'admin_soft_delete'
  
  namespace  :admin do
    namespace :api do
      namespace :v1 do
        resources :users, :posts, :pictures
      end
    end
  end
  patch 'admin/users/:id/soft_delete', to: "admin/users#soft_delete", as: "user_soft_delete"
  get '*path', :to => 'application#routing_error'
end
