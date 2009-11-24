class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery

  before_filter :has_permission?
  filter_parameter_logging :password
  helper_method :current_user
  helper_method :logged_in?

  private

  def logged_in?
    @current_user.present?
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

end
