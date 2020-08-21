# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    @user = User.create(user_params)

    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: { user: @user.as_json.merge(token: token, type: @user.type) }
    else
      render json: { error: 'Invalid email or password' }
    end
  end

  # LOGGING IN
  def login
    @user = User.find_by(email: params[:email])
    # authenticate is a bcrypt method and compares the params pass with the one stored in the DB
    if @user&.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user.as_json.merge(token: token) }
    else
      render json: { error: 'Invalid email or password' }
    end
  end

  def auto_login
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :phone_number, :type)
  end
end
