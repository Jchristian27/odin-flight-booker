class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :passenger_id
      t.integer :flight_id

      t.timestamps
    end
  end
end
