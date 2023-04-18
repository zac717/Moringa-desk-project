class AnswersController < ApplicationController
    before_action :authenticate_user!

    def index
      render json: Answer.all, status: :ok
    end

    def create
      answer = current_user.answers.create(answer_params)
      answer.question = current_question
      if answer
      render json: answer
      else
        render json: { errors: answer.errors.full_messages }, status: :unprocessable_entity
      end
    end
    private
    def answer_params
      params.require(:answer).permit(:description, :question_id)
    end
  end