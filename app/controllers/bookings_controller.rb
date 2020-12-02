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
    @booking.cinema = @cinema
    @booking.user = current_user
    if @booking.save
      #change to show after implementing show
      redirect_to root_path
    else
      render 'new'
    end
  end

  def booking_params
    params.require(:booking).permit(:quantity, :date, :time)
  end
end
