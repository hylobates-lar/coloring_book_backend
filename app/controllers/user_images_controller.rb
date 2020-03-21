class UserImagesController < ApplicationController
    before_action :authorized

    def index 
        @user_images = @user.user_images

        render json: @user_images
    end

    def create
        @user_image = @user.user_images.create(user_image_params)
       
        render json: @user_image
    end

    def show 
        @user_image = @user.user_images.find(params[:id])

        render json: @user_image
    end

    def update
        @user_image = @user.user_images.find(params[:id])
        @user_image.update!(user_image_params)

        render json: @user_image
    end

    def destroy
        @user_images = @user.user_images
        @user_image = @user.user_images.find(params[:id])
        @user_image.destroy

        render json: @user_images
    end

    private

    def user_image_params
        params.permit(:id, :user_id, :image_id, :fill_colors => [])
    end
end
