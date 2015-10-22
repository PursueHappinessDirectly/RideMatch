class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :last_name
      t.string :first_name
      t.string :gender
      t.string :email
      t.string :phone_number
      t.timestamps 
      
    end
  end
end
