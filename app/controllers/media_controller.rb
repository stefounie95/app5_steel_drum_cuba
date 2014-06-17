class MediaController < ApplicationController
  def photos
    @photos=Photo.where("image is not null and image <> '' ")
  end
end
