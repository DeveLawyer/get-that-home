# frozen_string_literal: true

Rails.application.routes.draw do
  resources :properties
  # get 'properties/create'
  # get 'properties/update'
  # get 'properties/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users, only: [:create]
  post '/login', to: 'users#login'
  get '/auto_login', to: 'users#auto_login'
end
