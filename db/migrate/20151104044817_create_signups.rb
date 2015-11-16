class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
	  t.string :first_name
	  t.string :last_name
	  t.string :username
	  t.string :email
	  t.string :phone_number
      t.timestamps
    end
  end
end
