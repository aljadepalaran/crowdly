class RegistrationController < ApplicationController

  def new
    @user = User.new
  end

  def create
    result = ::UserCreator.new(
      role: 'user',
      params: params
    ).create!

    if result[:status]
      flash[:alert] = 'success'
      redirect_to home_path
    else
      flash[:alert] = "FAIL: #{result[:errors].inspect}"
      redirect_to register_path
    end
  end
end
