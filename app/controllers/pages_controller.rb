class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :thank_you]

  def home
    redirect_to profile_path if user_signed_in?
    @users = User.all
  end

  def profile
    @user = current_user
  end

  def contact
    @users = User.all
  end

  def thank_you
    @users = User.all
  end

end
