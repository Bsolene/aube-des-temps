require 'open-uri'
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0

class House < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_one :equipment, inverse_of: :house, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :epis, presence: true, :inclusion => 0..4, :numericality => {:only_integer => true}
  validates :name, uniqueness: true, presence: true
  mount_uploaders :photos, PhotoUploader
  accepts_nested_attributes_for :equipment


  def calendar
    calendar = open(calendar_url)
    cal_file = File.open(calendar)
    cals = Icalendar::Calendar.parse(cal_file)
    cals.first.events.each do |event|
      check_in = event.dtstart
      check_out = event.dtend
      Reservation.create(house: self, start_time: check_in, end_time: check_out )
    end
  end


  def average
    if !reviews.empty?
      ratings = []
      reviews.each do |review|
        ratings << review.rating
      end
      sum = ratings.inject(:+)
      average = sum.to_f / reviews.length
      return average
    else
      0
    end
  end

  def bed
    if single_bed || double_bed != nil
      single_bed + double_bed
    else
      0
    end
  end

end
