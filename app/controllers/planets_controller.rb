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
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    if @planet.save
      redirect_to planets_path(@planet)
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

  private

  def planet_params
    params.require(:planet).permit(:name, :address, :description, :price)
  end
end
