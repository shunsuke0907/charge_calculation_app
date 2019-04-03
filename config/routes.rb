Rails.application.routes.draw do
  # get 'delivery_histories/index'

  # get 'delivery_histories/new'

  # get 'delivery_histories/edit'

  root 'static_pages#home'
  
  post '/calculation', to: 'charge_calculations#calculate'
  get  '/calculate',   to: 'static_pages#calculate'
  
  resources :delivery_histories
end