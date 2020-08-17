class RemoveSkillLevelFromSkills < ActiveRecord::Migration[6.0]
  def change
    remove_column :skills, :skill_level
  end
end
