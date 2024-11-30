class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def set_current_user
    if session[:user_id].present?
      @current_user = User.find(session[:user_id])
    end
  end
end
