class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @users = User.where(consultant: nil)
  end

  def show
    @user = User.find(params[:id])
  end
  
  def profile
    @user = current_user
    @bookings = @user.bookings
  end

  def consultant_true
    @user = current_user
    @user.consultant = true
    @user.save
    redirect_to profile_path
  end
  
  def consultant_false
    @user = current_user
    @user.consultant = false
    @user.save
    redirect_to profile_path
  end
  
  private

  def set_user
    
  end
end
