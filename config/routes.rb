Rails.application.routes.draw do
  get 'auth/:user_id/:token', to: 'session#auth'
  get 'static/home'
  resources :users, only: [:create]
  get '/register', to: 'users#register'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'
  resources :session, only: [:new, :create]
end
