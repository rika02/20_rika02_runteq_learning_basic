class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :require_login

  def require_login
    redirect_to login_path unless current_user
  end
end
