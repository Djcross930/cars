class RacesController < ApplicationController
  def index
    races = Race.all
    render json: races.as_json
  end
end
