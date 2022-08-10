class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.location, a.id] }
    @date_options = (Date.new(2022, 8, 1)..Date.new(2022, 8, -1)).map { |d| [d.strftime("%a, %b %d"), d] }
    @passenger_options = (1..4).map { |p| [p.to_s, p]}

    @flights = Flight.where("departure_airport_id = ? AND arrival_airport_id = ? AND departure_date = ?", params[:departure_airport_id], params[:arrival_airport_id], params[:departure_date])
  end
end
