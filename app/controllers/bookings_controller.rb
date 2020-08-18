class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
    @booking.booked_user_id = params[:user_id]
    @booking.user = current_user
    if @booking.save
      redirect_to profile_path
    else 
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:title, :description, :start_time, :end_time)
  end
end
