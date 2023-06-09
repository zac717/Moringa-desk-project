class ApplicationController < ActionController::API
  include ActionController::Cookies


  def authorize 
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

    # before_action :authenticate_user!
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    # rescue_from Pundit::NotAuthorizedError, with: :render_forbidden_response
    # def authenticate_user!
    #   return if current_user.present?
    #   render json: { errors: ['You need to sign in or sign up before continuing.'] }, status: :unauthorized
    # end
    def current_user
      current_user ||= User.find_by(id: session[:user_id])
    end

    def current_question
      Question.find(params[:question_id])
    end


    private
    def render_not_found_response(exception)
      render json: { error: exception.message }, status: :not_found
    end
    def render_unprocessable_entity_response(exception)
      render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
    def render_forbidden_response(exception)
      render json: { error: exception.message }, status: :forbidden
    end
  end
  
  
  
  
  
  
