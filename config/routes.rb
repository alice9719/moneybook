Rails.application.routes.draw do
  resources :formms

  
  get '/march', to: 'formms#march'

end
