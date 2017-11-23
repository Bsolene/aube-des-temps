class Review < ApplicationRecord
  belongs_to :house
  validates :name, presence: true
  validates :content, presence: true
  validates :rating, presence: true, :inclusion => 1..5, :numericality => {:only_integer => true}
end
