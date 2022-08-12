class BookingsController < ApplicationController
  before_action :set_flight, only: [:new]
  before_action :set_number_of_passengers, only: [:new]

  def new
    @booking = Booking.new
    @number_of_passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    binding.pry
    if @booking.save
      flash[:notice] = "Your flight has been successfully booked"
      redirect_to @booking #booking_path(@booking.id)
    else
      flash.now[:notice] = "There was something wrong with your form"
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :number_of_passengers, 
      passengers_attributes: [:name, :email])
  end

  def set_flight
    @flight = Flight.find(params[:flight_id])
  end

  def set_number_of_passengers
    @number_of_passengers = params[:number_of_passengers].to_i
  end
end
