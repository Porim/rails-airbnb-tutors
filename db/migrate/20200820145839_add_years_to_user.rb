class AddYearsToUser < ActiveRecord::Migration[6.0]
  def change
  add_column :users, :years, :integer
  end
end
