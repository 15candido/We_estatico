Rails.application.routes.draw do

  get 'user/new'

  root 'wem_statico#homepege'

  get '/homepege', to: 'wem_statico#homepege'

  get '/help', to: 'wem_statico#help'

  get '/about', to: 'wem_statico#about'

  get '/contact', to: 'wem_statico#contact'

  get '/login', to: 'user#new'
end
