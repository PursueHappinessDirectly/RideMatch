class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :first_name
      t.string :last_name
      t.string :last_flight_number
      t.string :arriving_time
      t.string :number_baggage
      t.string :destination
      t.string :email
      t.string :phone_number
      t.timestamps 
      
    end
  end
end
