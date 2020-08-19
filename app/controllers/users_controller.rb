class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @users = User.where(consultant: true)
  end

  def show
    @user = User.find(params[:id])
  end
  
  def profile
    @user = current_user
    @bookings = @user.bookings
  end

  private

  def set_user
    
  end
end
