class Api::V1::UsersController < ApplicationController

  def index
    user = User.find(params[:id])
    locs = user.locations.reverse.map {|e| {id: e.id, lat: e.lonlat.latitude, lng: e.lonlat.longitude, time: e.created_at.strftime("%A, %d %b %Y - %l:%M %p")}}
    render json: {locations: locs}
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if !user
      user = User.create(user_params)
      render json: {account: user}
    else
      render json: {error: "User already exists"}
    end
  end

  private

  def user_params
    params.require(:user).permit([:first_name, :last_name, :email, :password])
  end

end
