class SessionsController < ApplicationController
  def new
    # render login form
  end

  def create
    user = User.find_by(username: params[:username])

    if user.present? && user.authenticate(params[:password])
      set_new_session(user_id: user.id)
      flash[:alert] = 'You have logged in successfully.'
      redirect_to root_path, status: :permanent_redirect
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
