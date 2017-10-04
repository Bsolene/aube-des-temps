class ReservationsController < ApplicationController

skip_before_action :authenticate_user!
before_action :set_house


  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.house = @house
  end

  private

  def set_house
    @house = House.find(params[:house_id])
  end

  def reservation_params
    params.require(:reservation).permit( :check_in, :check_out)
  end

end
