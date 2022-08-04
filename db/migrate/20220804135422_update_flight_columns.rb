class UpdateFlightColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :flight_number, :integer
    add_column :flights, :departure_time, :string
    rename_column :flights, :start_datetime, :departure_date
  end
end
