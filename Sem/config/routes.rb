Rails.application.routes.draw do
  mount RailsAdmin::Engine => '//admin', as: 'rails_admin'
  resources :comments
  resources :tasks
  resources :projects
  devise_for :users, path: 'users', path_names: { sign_in: 'sign_in', sign_out: 'sign_out', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  devise_for :models

  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'
  resources :users

  root 'pages#welcome'  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

