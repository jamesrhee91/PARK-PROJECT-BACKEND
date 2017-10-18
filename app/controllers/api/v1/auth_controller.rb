class Api::V1::AuthController < ApplicationController

  def login
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      render json: {login: user}
    else
      render json: {error: "Not Authenticated"}
    end
  end

end
