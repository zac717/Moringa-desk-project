class QuestionTagsController < ApplicationController
    before_action :set_question
    def create
      tag = Tag.find_or_create_by(name: params[:name])
      question_tag = question.question_tags.new(tag: tag)
      if question_tag.save
        render json: { question_tag: question_tag }, status: :created
      else
        render json: { error: 'Failed to add tag to question' }, status: :unprocessable_entity
      end
    end
    def destroy
      tag = Tag.find(params[:id])
      question_tag = question.question_tags.find_by(tag: tag)
      if question_tag.destroy
        render json: { question_tag: question_tag }, status: :ok
      else
        render json: { error: 'Failed to remove tag from question' }, status: :unprocessable_entity
      end
    end
    private
    def set_question
      question = Question.find(params[:question_id])
    end
  end
  
  
  
  
  
  
  
  
  
  