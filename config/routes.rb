Rails.application.routes.draw do
  get "/dashboard" =>'dashboard#index', as: :dashboard
  get 'dashboard/clients'
  get 'dashboard/reports'
  get 'dashboard/patients'
  get 'dashboard/measures'


  resources :patients
  devise_for :accounts
  root to: 'public#main'
  resources :measures
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
