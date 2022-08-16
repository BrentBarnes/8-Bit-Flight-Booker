module FlightsHelper
  def params_present_and_no_flights_found?
    required = %i[departure_airport_id arrival_airport_id departure_date number_of_passengers]
    required.any? { |key| params.key?(key) } && @flights.empty?
  end
end
