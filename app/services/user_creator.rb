class UserCreator
  attr_accessor :role, :params

  def initialize(role:, params:)
    @role = role
    @params = params
  end

  def create!
    user = User.new
    user.first_name = params[:first_name]&.strip
    user.last_name = params[:last_name]&.strip
    user.email = params[:email]&.strip
    user.role = role
    user.session_token = session_token
    user.password = params[:password]
    user.password_confirmation = params[:password_confirmation]

    created = user.save ? true : false
    result =  {
      status: created,
      errors: user.errors
    }
  end

  def session_token
    SecureRandom.hex(10)
  end
end
