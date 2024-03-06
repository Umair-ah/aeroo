class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :departure_airport
      t.string :destination_airport

      t.timestamps
    end
  end
end
