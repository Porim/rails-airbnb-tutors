class RemovePricePerHourFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :price_per_hour
  end
end
