class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    return nil if not session[:user_id]
    User.find_by_id(session[:user_id])
  end

  def must_have_user
    redirect_to root_path if not current_user
  end
  
end
