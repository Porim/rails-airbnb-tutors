class RemovePricerPerHourFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :pricer_per_hour
  end
end
