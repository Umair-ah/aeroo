class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :passenger_name
      t.string :seat_number

      t.timestamps
    end
  end
end
