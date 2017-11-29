class HousesController < ApplicationController

skip_before_action :authenticate_user!, only: [:index, :show]
before_action :set_house, only: [:show, :edit, :update]

  def index
    @houses = House.all
  end

  def show
    @reservations = @house.reservations.all
    @reservation = Reservation.new
    @review = Review.new
  end

  def new
    @house = House.new
    @house.build_equipment
  end

  def create
    @house = House.new(house_params)

    @house.calendar
    if @house.save
      redirect_to house_path(@house)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @house.update(house_params)
    if @house.update
      redirect_to house_path(@house)
    else
      render :new
    end
  end

  private

  def set_house
    @house = House.find(params[:id])
  end

  def house_params
    # params.require(:house).permit(equipment_attributes: [:climatisation, :wifi, :lave_linge, :seche_linge] :name, :price, :epis, :description, :capacity, :room, :single_bed, :double_bed, {photos: []})
    params.require(:house).permit!
  end


end
