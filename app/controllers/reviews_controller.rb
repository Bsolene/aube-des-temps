class ReviewsController < ApplicationController

  before_action :set_house
  skip_before_action :authenticate_user!

  def create
    @review = Review.new(review_params)
    @review.house = @house
    if @review.save
      redirect_to house_path(@house)
    else
      render 'house/show'
    end
  end


  private


  def set_house
    @house = House.find(params[:house_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :name)
  end

end
