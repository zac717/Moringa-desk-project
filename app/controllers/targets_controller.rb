class TargetsController < ApplicationController
    def create
      @question = Question.find(params[:question_id])
      @target = @question.targets.create(target_params)
      if @target.save
        render json: @target
      else
        render json:{errors: target.errors.full_messages}
      end
    end
  
    private
  
    def target_params
      params.require(:target).permit(:targetable_type, :targetable_id)
    end
  end
  