Rails.application.routes.draw do
  resources :achievements
  resources :comments
  resources :diets
  resources :diseases
  resources :events
  resources :foods
  resources :groups
  resources :histories
  resources :phyactivities
  resources :pictures
  resources :places
  resources :plans
  resources :tipactivities
  resources :tipdiets
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
