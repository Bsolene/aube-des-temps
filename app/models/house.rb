class House < ApplicationRecord
  has_many :reservations
  has_many :reviews
  # mount_uploader :photo, PhotoUploader



  def average
    ratings = []
    reviews.each do |review|
      ratings << review.rating
    end
    sum = ratings.inject(:+)
    average = sum.to_f / reviews.length
    return average
  end

end
