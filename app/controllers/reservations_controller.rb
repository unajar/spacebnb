class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @planet = Planet.find(params[:planet_id])
    @reservation.planet = @planet
    @reservation.confirmed = false
    # raise
    if @reservation.save
      redirect_to planet_path(@planet)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
