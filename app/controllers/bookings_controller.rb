class BookingsController < ApplicationController
  before_action :set_flight, only: [:new]
  before_action :set_number_of_passengers, only: [:new]

  def new
  end

  def create
  end

  def show
  end

  private

  def set_flight
    @flight = Flight.find(params[:flight_id])
  end

  def set_number_of_passengers
    @number_of_passengers = params[:number_of_passengers]
  end
end
