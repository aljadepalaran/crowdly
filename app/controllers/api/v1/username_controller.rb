class Api::V1::UsernameController < Api::BaseController
  def index
    if params[:query] == 'taken'
      render json: { message: 'Username is already taken', status: :taken }
    else
      render json: { message: 'Username is available', status: :available }
    end
  end
end
