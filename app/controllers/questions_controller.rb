class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @quesion = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

end
