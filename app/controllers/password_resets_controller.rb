class PasswordResetsController < ApplicationController
  skip_before_action :require_login
  before_action :set_token_user, only: %i[edit update]

  def new; end

  def create
    @user = User.find_by(email: params[:email])
    @user&.deliver_reset_password_instructions!
    redirect_to login_path, success: t('defaults.message.reset_password', item: User.human_attribute_name('password'))
  end

  def edit; end

  def update
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.change_password(params[:user][:password])
      redirect_to login_path, success: t('defaults.message.changed_password', item: User.human_attribute_name('password'))
    else
      flash.now[:danger] = t('.fail')
      render :edit
    end
  end

  private

  def set_token_user
    @token = params[:id]
    @user = User.load_from_reset_password_token(@token)
    return not_authenticated if @user.blank?
  end

  def params_user
    params.require(:user).permit(:password_confirmation)
  end
end
