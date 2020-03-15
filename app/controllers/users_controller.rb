class UsersController < ApplicationController
  before_action :authorized, only: [:persist]
  skip_before_action :authorized, only: [:create]
    
    def create
      @user = User.create(user_params)
      if @user.valid?
        wristband = encode_token({user_id: @user.id})
        render json: { user: UserSerializer.new(@user), token: wristband }, status: 201
      else
        render json: { error: 'Failed to create user' }, status: 401
      end
    end
    
    def login
      @user = User.find_by(username: params[:username])
      
      if @user && @user.authenticate(params[:password])
        wristband = encode_token({user_id: @user.id})
        render json: { user: UserSerializer.new(@user), token: wristband }
      else
        render json: {error: "Oops try again!"}, status: 401
      end
    end
    
    def persist
      wristband = encode_token({user_id: @user.id})
      render json: { user: UserSerializer.new(@user), token: wristband }
    end

    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end
      
    private
    
    def user_params
      params.permit(:username, :password)
    end

end
