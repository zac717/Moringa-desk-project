class SessionsController < ApplicationController
  
    def create
      user = User.find_by(username: params[:session][:username].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        render json: user, status: :created
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
      end
    end
    def destroy
      log_out
      redirect_to root_path
    end
  end