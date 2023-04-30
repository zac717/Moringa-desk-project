class VotesController < ApplicationController
  before_action :set_answer, only: [:create]
  before_action :set_question

  def index
    render json: Vote.all 
  end


  
  def create

    
    vote = @answer.votes.new(user_id: current_user.id, value: params[:value])
    vote.question = @question
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

  def set_question
    @question = @answer.question
  end

end
  
  
  
  
  
