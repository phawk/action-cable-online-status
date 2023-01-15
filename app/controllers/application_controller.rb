class ApplicationController < ActionController::Base
  def user_signed_in?
    current_user.present?
  end
  helper_method :user_signed_in?

  def current_user
    if cookies.encrypted[:user_id]
      @user ||= User.find(cookies.encrypted[:user_id])
    end
  rescue => e
    cookies.delete(:user_id)
  end
  helper_method :current_user
end
