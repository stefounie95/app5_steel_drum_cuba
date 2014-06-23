class MediaController < ApplicationController
  def photos
    @photos=Photo.where("image is not null and image <> '' ")
  end
  
  def albums
    @musics=Music.where("sound is not null and sound <> '' ")
  end
  
end
