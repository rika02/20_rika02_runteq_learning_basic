class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update]
  def show; end

  def edit; end

  def update
    if @user.update(profile_params)
      redirect_to profile_path, success: t('defaults.message.updated', item: User.model_name.human)
    else
      flash[:danger] = t('defaults.message.not_updated', item: User.model_name.human)
      render :edit
    end
  end

  private

  def set_profile
    @user = User.find(current_user.id)
  end

  def profile_params
    params.require(:user).permit(:email, :last_name, :first_name, :avatar)
  end
end
