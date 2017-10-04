class Api::V1::UsersController < ApplicationController
  def index
    # byebug
    user = User.find(params[:id])
    locs = user.locations.map {|e| {lat: e.lonlat.latitude, lng: e.lonlat.longitude, time: e.created_at}}
    render json: {locations: locs}
  end

end
