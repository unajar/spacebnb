class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    @planet = Planet.find(params[:id])
    @planet.update(params[:planet])
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to planet_path(@planet)
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description, :address, :price, :user)
  end
end
