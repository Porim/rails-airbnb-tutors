class AddSkillLevelToUserSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :user_skills, :skill_level, :integer
  end
end
