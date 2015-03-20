class CategoriesController < ApplicationController

	def index
		@categories = Category.where("question_id = '#{params[:question_id]}'")
	end

	def new
		
	end

	def create
		category = Category.create(:tag_name => params[:tag_name], :question_id => params[:question_id])
	end

end
