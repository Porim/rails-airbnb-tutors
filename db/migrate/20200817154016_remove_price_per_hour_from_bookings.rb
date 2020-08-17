class RemovePricePerHourFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :price_per_hour
  end
end
