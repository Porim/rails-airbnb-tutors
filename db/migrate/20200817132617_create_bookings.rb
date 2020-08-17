class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.bigint :booked_user_id
      t.date :start_time
      t.date :end_time

      t.timestamps
    end
  end
end
