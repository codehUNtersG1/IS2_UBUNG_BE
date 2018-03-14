Rails.application.routes.draw do
  resources :achievements
  resources :diets
  resources :diseases
  resources :events
  resources :foods
  resources :groups
  resources :phyactivities
  resources :pictures
  resources :places
  resources :plans
  resources :tipactivities #, only: [:show, :destroy]

  resources :tipdiets
  resources :users do
    resources :histories
    resources :comments
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
