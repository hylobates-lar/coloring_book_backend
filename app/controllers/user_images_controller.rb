class UserImagesController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        @user_image = @user.user_images.create(user_image_params)
       
        render json: @user_image
    end


    private

    def user_image_params
        params.permit(:user_id, :image_id, :fill_colors)
    end
end
