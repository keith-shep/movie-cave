class CinemasController < ApplicationController
  def index
    @cinemas = Cinema.all
  end

  def show
    @cinema = Cinema.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
