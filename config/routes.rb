Rails.application.routes.draw do

  root 'questions#index'

  resources :questions do
    resources :answers
  end

  resources :categories
  resources :users
  resources :favorites, only: ["update", "edit"]
end
