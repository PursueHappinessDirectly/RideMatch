class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
	  t.string :last_flight_number
	  t.string :arriving_time
	  t.string :number_baggage
	  t.string :destination
	  t.string :request_id
	  t.string :accept_id
      t.timestamps 
    end
  end
end
