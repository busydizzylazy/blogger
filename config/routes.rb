Rails.application.routes.draw do
  resources :users
  
  
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
  
  
  
  root 'static_pages#home'
  
end
