class AddPricePerHourToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :pricer_per_hour, :integer
  end
end
