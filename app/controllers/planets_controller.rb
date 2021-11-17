class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
  end

  def create
    @lplanet = Planet.new(list_params)
    if @planet.save
      redirect_to planets_path(@lplanet)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
