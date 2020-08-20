class UserSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  # validates :skill_level, presence: true
  # validates :skill_level, { in: [1, 2, 3, 4, 5] }
end
