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

    if @reservation.save
      redirect_to planet_path(@planet)
    else
      render :new
    end
  end

  def my_planets_reservations
    planets = current_user.planets
    @pending = retrieve_reservations('pending', planets)
    @confirmed = retrieve_reservations('confirmed', planets)
  end

  private

  def retrieve_reservations(status, planets)
    reservations = []
    planets.each do |planet|
      unless planet.reservations.empty?
        reservations += planet.reservations.select { |reservation| reservation.status == status }
      end
    end
    return reservations
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
