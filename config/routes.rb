# frozen_string_literal: true

Rails.application.routes.draw do
  get "home/index"
  root "tasks#index"

  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
