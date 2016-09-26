class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_user, :logged_in?, :log_in

  def current_user
    @current_user ||= User.find(cookies.signed[:user_id]) if cookies.signed[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def log_in(user_id)
    cookies.signed[:user_id] = user_id
  end


  protected

  def authenticate_user!
    redirect_to root_path unless logged_in?
  end
end
