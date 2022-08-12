class RemoveFlightIdFromPassenger < ActiveRecord::Migration[7.0]
  def change
    remove_column :passengers, :flight_id
  end
end
