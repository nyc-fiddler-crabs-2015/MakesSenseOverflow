class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def index
    @answers = Answer.where(question_id: params[:question_id])
  end

  def create
    answer = Answer.new(answer_params)
    if answer.save
      redirect_to :back
    else
      render new_answer_path
  end

  def destroy
    Answer.find(params[:id]).destroy
    redirect_to :back
  end

  def show
    @answer = Answer.find(params[:id])
    @user = User.find(@answer.user_id)
  end

private

  def answer_params
    params.require(:answer).permit(:contnet, :vote_count,
                                   :question_id, :user_id)
  end

end

