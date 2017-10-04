class HousesController < ApplicationController

skip_before_action :authenticate_user!, only: [:index, :show]
before_action :set_house, only: [:show]

  def index
    @houses = House.all
  end

  def show
    @reservation = Reservation.new
  end

  private

  def set_house
    @house = House.find(params[:id])
  end

end
