class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    params[:answer][:question_id] = params[:question_id]
    answer = Answer.new(answer_params)
    if answer.save
      redirect_to :back
    else
      redirect_to new_answer_path
    end
  end

  def destroy
    Answer.find(params[:id]).destroy
    redirect_to :back
  end


private

  def answer_params
    params.require(:answer).permit(:content, :question_id, :user_id)
  end

end

