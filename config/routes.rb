Rails.application.routes.draw do
  resources :user_images
  resources :images 
  resources :users, only: [:create, :show]

  post "/login", to: "users#login"
  get "/persist", to: "users#persist"
  get '/profile', to: 'users#profile'

end
