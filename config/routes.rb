Rails.application.routes.draw do

	root 'questions#index'

	resources :questions do
		resources :answers
		resources :categories

	end

	resources :users
	resources :favorites, only: ["update", "edit"]
end
