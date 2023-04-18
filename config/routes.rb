 Rails.application.routes.draw do
    root 'questions#index'
    resources :users


    post "/signup", to: 'users#create'

    
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'


    resources :questions do
      resources :answers, only: [:create]


    end

    resources :answers do
      resources :votes, only: [:create, :update, :destroy]

      # http://127.0.0.1:3000/answers/1/votes
    end



    resources :tags, only: [:show]
    resources :question_tags, only: [:create, :destroy]
    resources :notifications, only: [:index]
  end

  