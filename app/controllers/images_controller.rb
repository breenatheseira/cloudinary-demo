class ImagesController < ApplicationController
    require 'carrierwave/orm/activerecord'
    def index
        @image = Image.new
        #uploader = AvatarUploader.new
        #@test = uploader.retrieve_from_store!('default.jpg')
    end
    
    def create
        # uploader = AvatarUploader.new
        @image = Image.new(image_params)
        # uploader.store!(@image.avatar)

        if @image.save
            redirect_to image_path(@image)
        end
    end
    
    def show
        @image = Image.find(params[:id])
        # uploader = AvatarUploader.new
        # @my_file = uploader.retrieve_from_store!(@image.avatar)
    end
    
    def image_params
        params.require(:image).permit(:name,:avatar)
    end
end