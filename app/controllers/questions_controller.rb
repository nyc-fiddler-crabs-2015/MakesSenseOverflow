class QuestionsController < ApplicationController
  before_filter :ensure_current_user

  skip_before_filter :ensure_current_user, :only => [:index, :show]

  before_filter :ensure_current_user

  skip_before_filter :ensure_current_user, :only => [:index, :show]

  def index
    @questions = Question.all
    # @answers = @question.answers
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = Answer.where(question_id: params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to question_path(@question)
    else
      redirect_to :back
    end
  end


  def edit
    @question = Question.find_by(params[:id])
  end

  def update
    @question = Question.find_by(params[:id])
    if @question.update_attributes(question_params)
      redirect_to question_path(@question)
    else
      redirect_to :back
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to :back
  end

  private

  def question_params
    params.require(:question).permit(:title, :description, :user_id)
  end

end
