class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.text :last_name
      t.text :first_name
      t.text :gender
      t.text :email
      t.text :phone_number
      t.timestamps 
      
    end
  end
end
