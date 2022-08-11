class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :email
      t.integer :flight_id
      t.integer :booking_id

      t.timestamps
    end
    remove_column :flights, :number_of_passengers
  end
end
