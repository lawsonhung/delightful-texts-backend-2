class UsersController < ApplicationController

  def profile
    render json: current_user
  end

  def create
    user = User.create(user_params)

    if user.valid?
      payload = { user_id: user.id }
      token = JWT.encode(payload, secret, 'HS256')
      render json: { token: token } # I want a token instead
    else
      render json: { errors: user.errors.full_messages }, status: 422
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end

end
