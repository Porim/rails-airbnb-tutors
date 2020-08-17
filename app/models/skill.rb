class Skill < ApplicationRecord
  belongs_to :user

  validates :name, :skill_level, presence: true
  validates :skill_level, inclusion: { in: [1, 2, 3, 4, 5] }
end
