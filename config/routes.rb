Rails.application.routes.draw do
  resources :patients
  devise_for :accounts
  root to: 'public#main'
  resources :measures
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
