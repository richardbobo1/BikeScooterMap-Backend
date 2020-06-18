class TripsController < ApplicationController

  
  def index
    trips = Trip.all 
    render json: trips.as_json(:include => [:journals])

  end

  def show
    trip = Trip.where(id: params[:id])
    render json: trip.as_json(:include => [:journals])
  end

  def create
    trip = Trip.create(trip_params)
    render json: trip
  end 

  private 

  def trip_params
    params.require(:trip).permit(:user_id, :trip_name, :trip_start, :trip_end, :notes)
  end

end
