class CarsController < ApplicationController

  def index
    cars = Car.all
    render json: cars.as_json
  end

end
