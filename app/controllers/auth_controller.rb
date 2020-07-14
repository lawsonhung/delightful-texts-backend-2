class AuthController < ApplicationController

  def login
    # Find a user
    user = User.find_by(username: params[:username])
    # If user exists, see if they are really the user via a password
    is_authenticated = user.authenticate(params[:password])
    # If all is well, send back the user
    if is_authenticated
      token = encode_token(user.id)
      render json: { token: token } # I want a token instead
    else
      render json: { errors: ['This be the auth#login controller lads. Your username doesn\'t match your password tho'] }, status: 422
    end
  end

end
