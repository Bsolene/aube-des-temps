# class ReviewsController < ApplicationController

#   before_action :set_house
#   skip_before_action :authenticate_user!
#   skip_after_action :verify_authorized


#   def create
#     @equipment = Equipment.new(equipment_params)
#     @equipment.house = @house
#     if @equipment.save
#       redirect_to house_path(@house)
#     else
#       render :new
#     end
#   end


#   private


#   def set_house
#     @house = House.find(params[:house_id])
#   end

#   def equipment_params
#     params.require(:equipment).permit!
#   end

# end
