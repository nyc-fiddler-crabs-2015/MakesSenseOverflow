class CategoriesController < ApplicationController

	def index
		@categories = Category.where("question_id = '#{params[:question_id]}'")
	end

	def new
		@category = Category.new
		@question = Question.find(params[:question_id])
	end

	def create
		params[:category][:question_id] = params[:question_id]
		category = Category.create(category_params)
		redirect_to :back
	end

	private

	def category_params
		params.require(:category).permit(:question_id, :tag_name)
	end

end
