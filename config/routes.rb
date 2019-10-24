Rails.application.routes.draw do

  
  resources :characters
  resources :backgrounds
  resources :races
  resources :jobs
  resources :skills
  resources :spells

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
