class Booking < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :reviews

  validates :title, :description, :start_time, :end_time, presence: true
  
  validate :check_time_equality
  def check_time_equality
    if self.start_time >= self.end_time
      errors.add(:end_time, "must be after the start date")
    end
    unless ((self.end_time.time - self.start_time.time) % 3600).zero?
      errors.add(:end_time, "only full hour slots")
    end
  end
end

# need to think about validation for start_time and end_time
