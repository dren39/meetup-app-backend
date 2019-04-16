class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]


  def index
    @users = User.all
    render json: @users
  end

  def get_user
    token = request.headers["authorization"]
    id = JWT.decode(token, 'my_s3cr3t')[0]["user_id"]
    @user = User.find(id)
    if @user.valid?
      render json: {user: {username: @user.username, fullname: @user.fullname, events: @user.events}}
    end
  end
  # def show
  #   @user = User.find(params[:id])
  #   render json: @user
  #   # render json: { user: UserSerializer.new(current_user) }, status: :accepted
  # end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), token: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :fullname)
  end
end
