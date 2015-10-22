class CreateVolunsignups < ActiveRecord::Migration
  def change
    create_table :volunsignups do |t|
      t.string :first_name
      t.string :last_name
      t.string :car_type
      t.string :car_capacity
      t.string :email
      t.string :phone_number
      t.timestamps
    end
  end
end
