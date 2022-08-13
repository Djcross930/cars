class CarsController < ApplicationController

  def index
    cars = Car.all
    render json: cars.as_json
  end

  def show
    car = Car.find_by(id: params[:id])
    render json: car.as_json
  end
end
