module RedirectHelper
  extend ActiveSupport::Concern

  included do
    before_action :redirect_if_user_not_logged_in!
  end

  private

  def redirect_if_user_not_logged_in!
    return if controller_path == 'login'

    flash[:alert] = 'You must login.'
    redirect_to login_path if Current.user.blank?
  end
end
