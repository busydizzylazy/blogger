Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  resources :account_activations, only: [:edit]
  resources :posts
  
  
  get 'users/new'

  get  'static_pages/home'
  get  'static_pages/help'
  get  'static_pages/about'
  get  'static_pages/contact'
  get  'static_pages/account'
  
  get  '/help',    to: 'static_pages#help', as: 'helf'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/account', to: 'static_pages#account'
  
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  
  get 'posts/new', to: 'posts#new', as: 'newpost'
  get 'posts/new', to: 'posts#destroy', as: 'deletepost'
  get 'posts/edit', to: 'posts#edit'
  
  root 'static_pages#home'
  
end
