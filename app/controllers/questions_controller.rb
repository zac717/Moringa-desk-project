class QuestionsController < ApplicationController
    before_action :authorize, except: [:index, :show]

    before_action :set_question, only: [:show, :update, :destroy]

    def index
      questions = Question.all
      render json: questions
     end

     def show
      question = set_question
      if question 
        render json: question
      else 
        render json:{error:"Not found"}
     end
    end
    # def show
    #   answer = Answer.new(question: question)
    #  end
    def new
      question = Question.new
    end
    
    def create
      question = Question.new(question_params)
      question.user = current_user
      if question.save
        render json: question,only: [:id, :title, :description], status: :created
      else
       render json: { errors: question.errors.full_messages },status: :unprocessable_entity
      end
    end
    def update
      question = set_question
      if question.update(question_params)
       render json: question,status: :ok 
      else
        render json:{ errors: question.errors.full_messages}, status: :unprocessable_entity
      end
    end
    def destroy
      question = set_question
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
