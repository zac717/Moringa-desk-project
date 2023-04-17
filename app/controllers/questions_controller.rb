class QuestionsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    before_action :set_question, only: [:show, :edit, :update, :destroy]

    def index
      questions = Question.all
      render json: questions
     end
    def show
      answer = Answer.new(question: question)
     end
    def new
      question = Question.new
    end
    def edit
    end
    def create
      question = Question.new(question_params)
      question.user = current_user
      if question.save
        render json: question, status: :created
      else
       render json: { errors: question.errors.full_messages },status: :unprocessable_entity
      end
    end
    def update
      if question.update(question_params)
        redirect_to question, notice: 'Question was successfully updated.'
      else
        render :edit
      end
    end
    def destroy
      question.destroy
      redirect_to questions_url, notice: 'Question was successfully destroyed.'
    end
    private
    def set_question
      question = Question.find(params[:id])
    end
    def question_params
      params.require(:question).permit(:title, :description)
    end
  end
