class ProfileController < ApplicationController
  def index
  end

  def update
    current_user.update(user_params)
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name,:last_name)
  end
end
