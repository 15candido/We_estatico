Rails.application.routes.draw do

  get 'sessions/new'

  root 'wem_statico#homepege'
  get '/homepege', to: 'wem_statico#homepege'
  get '/help', to: 'wem_statico#help'
  get '/about', to: 'wem_statico#about'
  get '/contact', to: 'wem_statico#contact'
  get '/registar', to: 'users#new'
  get  '/login',      to:  'sessions#new'
  post  '/login',      to:  'sessions#create'
  delete  '/logout',    to: 'sessions#destroy'
  resources :users
end
