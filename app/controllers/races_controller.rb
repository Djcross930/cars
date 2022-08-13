class RacesController < ApplicationController
  def index
    races = Race.all
    render json: races.as_json
  end

  def show
    race = Race.find_by(id: params[:id])
    car = Car.find_by(id: race.winner_car_id)
    render json: car
  end
end
