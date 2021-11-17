class PlanetsController < ApplicationController
  def index
    @planets = Planet.all.reject do |planet|
      current_user == planet.user
    end
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
      redirect_to my_planet_path(@planet)
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
    redirect_to my_planet_path(planet)
  end

  def destroy
    planet = Planet.find(params[:id])
    planet.destroy
    redirect_to my_planets_path
  end

  def my_planets
    @planets = current_user.planets
  end

  def my_planet
    @planet = Planet.find(params[:id])
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description, :address, :price, :user)
  end
end
