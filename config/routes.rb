Rails.application.routes.draw do
   get '/signup', to: "users#new"
   post '/signup', to: "users#create"
   get '/login', to: "auth#signin"
   post '/login', to: "auth#verify"
   get '/logout', to: "auth#logout"
   get '/' => 'characters#index'
  
    get 'auth/signin'
    get 'auth/verify'
    get 'auth/logout'

  resources :characters
  resources :backgrounds
  resources :races
  resources :jobs
  resources :skills
  resources :spells

end
