class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @users = User.where(consultant: true)
  end

  def show
    @user = User.find(params[:id])
  end

<<<<<<< HEAD
  private
=======
  def profile
    @user = current_user
    @bookings = @user.bookings
  end

  # private

  # def set_user
>>>>>>> 947efe54c41a41d7725fa7ba63e2db2d3f790aa9

  def set_user
    
  end
end
