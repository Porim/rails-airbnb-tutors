class Booking < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :reviews

  validates :title, :description, :price_per_hour, :start_time, :end_time, presence: true
end

# need to think about validation for start_time and end_time
