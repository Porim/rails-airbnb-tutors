class AddPricePerHourToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :price_per_hour, :integer
  end
end
