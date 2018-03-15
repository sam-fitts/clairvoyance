class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    redirect_to profile_path if user_signed_in?
    @users = User.all
  end

  def profile
    @user = current_user
  end
end
