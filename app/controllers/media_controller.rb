class MediaController < ApplicationController
  def photos
    @photos=Photo.where("image is not null and image <> '' ")
  end
  
  def albums
  end
  
end
