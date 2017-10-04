class Api::V1::UsersController < ApplicationController

  def index
    user = User.find(params[:id])
    locs = user.locations.map {|e| {id: e.id, lat: e.lonlat.latitude, lng: e.lonlat.longitude, time: e.created_at.strftime("%A, %d %b %Y - %l:%M %p")}}
    render json: {locations: locs}
  end

end
