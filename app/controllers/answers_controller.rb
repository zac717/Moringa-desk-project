class AnswersController < ApplicationController
    before_action :authorize
    before_action :set_answer
    before_action :set_question

    def index
      render json: Answer.all, status: :ok
    end

    def show
     
      render json: @answer
    end

    def create
      answer= @question.answers.new(user_id: current_user.id, description: params[:answer])
      
      if answer.save
      render json: answer
      else
        render json: { errors: answer.errors.full_messages }, status: :unprocessable_entity
      end
    end
    private

    def set_answer
      @answer = Answer.find(params[:id])
    end
  

    def set_question
      @question = Question.find(params[:question_id])
    end
    # def answer_params
    #   params.require(:answer).permit(:description, :question_id)
    # end
  end