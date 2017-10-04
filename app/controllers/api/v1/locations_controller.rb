class Api::V1::LocationsController < ApplicationController

  def index
    lat = params[:coords].split('&')[0].gsub('_', '.').to_f
    lon = params[:coords].split('&')[1].gsub('_', '.').to_f
    nearest = Location.where("ST_Distance(lonlat, 'POINT(#{lon} #{lat})') < 200")
    if nearest.blank?
      render json: {empty: []}
    else
      nearest = nearest.map {|e| {lat: e.lonlat.latitude, lng: e.lonlat.longitude}}
      render json: {locations: nearest}
    end
  end

  def create
    lon = location_params[:lon].round(4)
    lat = location_params[:lat].round(4)
    loc = Location.find_or_initialize_by(lonlat: "POINT(#{lon} #{lat})")
    user = User.first
    if loc.save
      Reservation.find_or_create_by({user_id: user.id, location_id: loc.id})
      render json: {success: loc}
    else
      render json: {error: "Something went wrong"}
    end
  end

  def destroy
    loc = Location.find(params[:id])
    res = Reservation.find_by(location_id: params[:id])
    if res.destroy && loc.destroy
      render json: {success: "success"}
    else
      render json: {error: "error"}
    end
  end


  private

  def location_params
    params.require(:location).permit(:lat, :lon)
  end

end
