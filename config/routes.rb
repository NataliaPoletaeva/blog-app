Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'}

  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new]
  end

  resources :posts do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end

  post '/posts/create', to: 'posts#create'

  root 'users#index'

end
