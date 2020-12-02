class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @cinema = Cinema.find(params[:cinema_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @cinema = Cinema.find(params[:cinema_id])
    @user = current_user
    raise
  end

  def booking
    params.require(:booking).permit(:quantity, :date, :time)
  end
end
