Rails.application.routes.draw do

	root 'questions#index'

	resources :questions do
		resources :answers
		resources :categories

	end

	resources :users, only: ["new", "create", "index", "show"]
	resources :sessions, only: ["new", "create"]

	resources :favorites, only: ["update", "edit"]


	get '/logout', to: 'sessions#logout'
end
