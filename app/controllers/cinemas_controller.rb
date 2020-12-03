class CinemasController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @cinemas = Cinema.all
  end

  def show
    @cinema = Cinema.find(params[:id])
  end

  def new
    @cinema = Cinema.new
  end

  def create
    @cinema = Cinema.new(cinema_params)
    @cinema.user = current_user
    binding.pry
    if @cinema.save
      redirect_to cinema_path(@cinema)
    else
      render :new
    end
  end

  def edit
    @cinema = Cinema.find(params[:id])
  end

  def update
    @cinema = Cinema.find(params[:id])
    @cinema.update!(cinema_params)
    redirect_to cinema_path(@cinema)
  end

  private

  def cinema_params
    params.require(:cinema).permit(:location, :capacity, :price, :movie_selection, :description, :screen_size, :photo)
  end
end
