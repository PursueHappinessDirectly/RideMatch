class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
    t.string :last_flight_number
    t.string :arriving_time
    t.string :number_baggage
    t.string :destination
    t.references :signup
    t.timestamps
    end
  end
end
