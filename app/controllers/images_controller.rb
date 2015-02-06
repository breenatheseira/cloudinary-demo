class ImagesController < ApplicationController
    require 'carrierwave/orm/activerecord'
    def index
        uploader = AvatarUploader.new
        #@test = uploader.retrieve_from_store!('default.jpg')
    end
end