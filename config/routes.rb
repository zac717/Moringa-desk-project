 Rails.application.routes.draw do
    root 'questions#index'
    resources :users, only: [:new, :create]
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    resources :questions do
      resources :answers, only: [:create]
    end
    resources :answers do
      resources :votes, only: [:create, :destroy]
    end
    resources :tags, only: [:show]
    resources :question_tags, only: [:create, :destroy]
    resources :notifications, only: [:index]
  end
