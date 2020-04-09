class ImagesController < ApplicationController
    skip_before_action :authorized

    def index
        @images = Image.all 
        render json: @images
    end
      
end
