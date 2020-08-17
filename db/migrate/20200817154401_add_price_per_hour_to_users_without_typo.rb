class AddPricePerHourToUsersWithoutTypo < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :price_per_hour, :integer
  end
end
