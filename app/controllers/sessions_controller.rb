class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path
    else
      message = "Login failed, incorrect user or password"
      redirect_to login_path, notice: message
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
