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
        #     Cloudinary::Uploader.upload(params[@image.avatar])
        #   render upload_image(@image)
            redirect_to image_path(@image)
        end
    end
    
    def upload_image(image)
        @image = image
        # Cloudinary::Uploader.upload("http://cloudinary-breenatheseira.c9.io" + @image.avatar_url)
        # redirect_to image_path(@image)
    end
    
    def show
        @image = Image.find(params[:id])
        # uploader = AvatarUploader.new
        # @my_file = uploader.retrieve_from_store!(@image.avatar)
    end
    
    def image_params
        params.require(:image).permit(:name,:avatar,:image_cache, short_name)
    end
end