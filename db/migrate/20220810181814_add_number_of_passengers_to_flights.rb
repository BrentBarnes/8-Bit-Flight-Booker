class AddNumberOfPassengersToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :number_of_passengers, :integer
  end
end
