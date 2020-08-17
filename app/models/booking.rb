class Booking < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :reviews

  validates :title, :description, :booked_user_id, :start_time, :end_time, presence: true
end
