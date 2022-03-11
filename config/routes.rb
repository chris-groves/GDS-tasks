# frozen_string_literal: true

Rails.application.routes.draw do
  get "home/index"
  root "home#index"

  resources :tasks, only: %i[index new create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
