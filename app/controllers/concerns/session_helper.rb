module SessionHelper
  extend ActiveSupport::Concern
  included do
    before_action :set_current_user
  end
  def set_current_user
    Current.user = User.find(session[:user_id]) if session[:user_id]
  end
end
