Rails.application.routes.draw do

  root 'wem_statico#homepege'

  get 'wem_statico/homepege'

  get 'wem_statico/help'

  get 'wem_statico/about'


end
