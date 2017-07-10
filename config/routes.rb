Rails.application.routes.draw do

  root to: 'items#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/dashboard', to: 'users#show'

  get '/users', to: 'users#index', as: 'users'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user'
  put '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update'

  get '/items', to: 'items#index', as: 'items'
  get '/items/:id', to: 'items#show', as: 'item'
  get '/categories/:id', to: 'categories#show', as: 'category'

  get '/orders', to: 'orders#index', as: 'orders'
  post '/orders', to: 'orders#create'
  get '/orders/new', to: 'orders#new', as: 'new_order'
  get '/orders/:id', to: 'orders#show', as: 'order'

  get 'admin/dashboard', to: 'admin/users#index', as: 'admin_dashboard'
  get 'admin/users', to: 'admin/users#index', as: 'admin_users'
  get 'admin/user/:id', to: 'admin/users#show', as: 'admin_user'

  get 'admin/orders', to: 'admin/orders#index', as: 'admin_orders'
  get 'admin/orders/:id/edit', to: 'admin/orders#edit', as: 'admin_edit_order'
  get 'admin/orders/:id', to: 'admin/orders#show', as: 'admin_order'
  put 'admin/orders/:id', to: 'admin/orders#update'
  patch 'admin/orders/:id', to: 'admin/orders#update'

  get 'admin/items', to: 'admin/items#index', as: 'admin_items'
  post 'admin/items', to: 'admin/items#create'
  get 'admin/items/new', to: 'admin/items#new', as: 'new_admin_item'
  get 'admin/items/:id/edit', to: 'admin/items#edit', as: 'edit_admin_item'
  get 'admin/items/:id', to: 'admin/items#show', as: 'admin_item'
  put 'admin/items/:id', to: 'admin/items#update'
  patch 'admin/items/:id', to: 'admin/items#update'

  get '/cart', to: 'carts#show'
  post '/cart', to: 'carts#create'
  put '/cart', to: 'carts#update'
  delete '/cart', to: 'carts#destroy'
end
