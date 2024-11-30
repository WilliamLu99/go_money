class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present? && @user.authenticate(params[:password])
      id = @user.id
      session[:user_id] = id
      redirect_to user_path id: id
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
