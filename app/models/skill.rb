class Skill < ApplicationRecord
  has_many :users  
  has_many :users, through: :user_skills

  validates :name, presence: true
  # validates :skill_level, inclusion: { in: [1, 2, 3, 4, 5] }
end
