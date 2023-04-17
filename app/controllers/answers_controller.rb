class AnswersController < ApplicationController
    before_action :authenticate_user!
    def create
      answer = current_user.answers.build(answer_params)
      if answer.save
        redirect_to question_path(answer.question_id), notice: 'Answer was successfully created.'
      else
        redirect_to question_path(answer.question_id), alert: 'Failed to create answer.'
      end
    end
    private
    def answer_params
      params.require(:answer).permit(:body, :question_id)
    end
  end