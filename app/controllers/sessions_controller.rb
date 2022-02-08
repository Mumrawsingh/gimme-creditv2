class SessionsController < ApplicationController

  skip_before_action :authenticate_user, only: [:login]
  
  def login
    user = User.find_by_username(params[:username])
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: :ok
      else
        render json: { error: "Invalid Email Address or Password" }, status: :unauthorized
      end
  end

  def logout
    session.delete :user_id
    end

  
  
  
  
  
  
  
  # skip_before_action :authorize, only: :create

  # def create
  #   user = User.find_by(username: params[:username])
  #   if user&.authenticate(params[:password])
  #     session[:user_id] = user.id
  #     render json: user
  #   else
  #     render json: { errors: ["Invalid username or password"] }, status: :unauthorized
  #   end
  # end

  # def destroy
  #   session.delete :user_id
  #   head :no_content
  # end

end
