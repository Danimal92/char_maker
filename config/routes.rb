Rails.application.routes.draw do

  resources :character
  resources :background
  resources :race
  resources :job
  resources :skill
  resources :spell
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
