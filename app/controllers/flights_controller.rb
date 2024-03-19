class FlightsController < ApplicationController

  before_action :authenticate_admin!

  def index
    @flights = Flight.all.order(created_at: :desc)
  end

  def new
    @flight = Flight.new
  end

  def create
    @flight = Flight.new(flight_params)
    if @flight.save
      redirect_to flights_path
    end
  end

  def edit
    @flight = Flight.find(params[:id])
  end

  def update
    @flight = Flight.find(params[:id])
    if @flight.update(flight_params)
      redirect_to flights_path
    end
  end

  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy
    redirect_to flights_path

  end

  private

  def flight_params
    params.require(:flight).permit(:flight_number, :departure_airport, :destination_airport)
  end
end