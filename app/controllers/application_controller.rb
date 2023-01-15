class ApplicationController < ActionController::Base
  def signed_in?
  end
  helper_method :signed_in?

  def current_user
  end
  helper_method :current_user
end
