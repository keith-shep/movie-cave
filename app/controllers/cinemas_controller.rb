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
  end

  def edit
  end

  def update
  end
end
