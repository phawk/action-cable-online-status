class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to new_session_path, notice: "User not found!"
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
end
