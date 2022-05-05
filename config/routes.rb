# frozen_string_literal: true

Rails.application.routes.draw do

  resources :users, only: %i[index show] do
    resources :posts, only: %i[index create new show]
  end

  resources :posts do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end

  get '/posts/new', to: 'posts#new'
  post '/posts/create', to: 'posts#create'

  root 'users#index'

end
