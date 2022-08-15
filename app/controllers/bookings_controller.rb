class BookingsController < ApplicationController
  before_action :set_flight, only: [:new, :show]
  before_action :set_number_of_passengers, only: [:new, :show]

  def new
    @booking = Booking.new
    @number_of_passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:notice] = "Your flight has successfully been booked. Welcome aboard!"
      redirect_to booking_path(id: @booking.id, flight_id: @booking.flight_id)
    else
      flash[:notice] = "You must fill out all fields"
      @flight = Flight.find(params[:booking][:flight_id])
      render :new, status: :unprocessable_entity
      # redirect_to new_booking_path(flight_id: params[:booking][:flight_id], number_of_passengers: params[:booking][:number_of_passengers])
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :number_of_passengers, passengers_attributes: [:name, :email])
  end

  def set_flight
    @flight = Flight.find(params[:flight_id])
  end

  def set_number_of_passengers
    @number_of_passengers = params[:number_of_passengers].to_i
  end
end
