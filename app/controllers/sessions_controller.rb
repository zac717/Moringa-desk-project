class SessionsController < ApplicationController
  
    def create
      user = User.find_by(username: params[:session][:username].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: {errors:'Invalid email/password combination'}
      
      end
    end
    def destroy
      session.delete :user_id
      head :no_content
    end
  end