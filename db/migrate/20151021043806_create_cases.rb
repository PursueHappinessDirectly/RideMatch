class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
    t.text :last_flight_number
    t.text :arriving_time
    t.text :number_baggage
    t.text :destination
    t.references :signups
    t.timestamps
    end
  end
end
