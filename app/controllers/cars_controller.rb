class CarsController < ApplicationController

  def index
    cars = Car.all
    render json: cars.as_json
  end

  def show
    car = Car.find_by(id: params[:id])
    render json: car.as_json
  end

  def create
    car = Car.new
    car.model = params[:model]
    car.year = params[:year]
    car.color = params[:color]
    car.save
    render json: car.as_json
  end

  def update
    car = Car.find_by(id: params[:id])
    car.model = params[:model] || car.model
    car.year = params[:year] || car.year
    car.color = params[:color] || car.color
    car.save
    render json: car.as_json
  end

  def destroy
    car = Car.find_by(id: params[:id])
    car.destroy
    render json: {message: "Car deleted"}
  end


end
