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
    @planet = Planet.find(params[:id])
  end

  def update
    planet = Planet.find(params[:id])
    planet.update(planet_params)
    redirect_to planet_path(planet)
  end

  def destroy
    planet = Planet.find(params[:id])
    planet.destroy
    redirect_to planets_path
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description, :address, :price, :user)
  end
end
