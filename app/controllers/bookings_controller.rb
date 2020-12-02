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
  end
end
