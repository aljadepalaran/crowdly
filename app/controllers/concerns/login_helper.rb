module LoginHelper
  extend ActiveSupport::Concern

  def set_new_session(user_id:)
    session[:user_id] = user_id
  end
end
 