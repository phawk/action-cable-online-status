class ApplicationController < ActionController::Base
  def user_signed_in?
    current_user.present?
  end
  helper_method :user_signed_in?

  def current_user
    if session[:user_id]
      @user ||= User.find(session[:user_id])
    end
  rescue => e
    session.destroy
  end
  helper_method :current_user
end
