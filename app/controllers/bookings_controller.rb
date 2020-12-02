class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(id: current_user.id)
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
    @booking.cinema = @cinema
    @booking.user = current_user
    if @booking.save
      redirect_to user_bookings_path(current_user)
    else
      render 'new'
    end
  end

  def booking_params
    params.require(:booking).permit(:quantity, :date, :time)
  end
end
