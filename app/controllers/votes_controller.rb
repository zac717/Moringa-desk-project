class VotesController < ApplicationController
  before_action :set_answer, only: [:create]
  def create
    vote = @answer.votes.new(user_id: current_user.id, value: params[:value])
    if vote.save
      render json: vote, status: :created
    else
      render json: vote.errors, status: :unprocessable_entity
    end
  end
  private
  def set_answer
    @answer = Answer.find(params[:answer_id])
  end
end
  
  
  
  
  
