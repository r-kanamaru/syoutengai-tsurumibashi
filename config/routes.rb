Rails.application.routes.draw do

  root 'shops#index'

   devise_for :users, controllers:{
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
   }

  resources :shops




end
