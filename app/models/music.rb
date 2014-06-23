# == Schema Information
#
# Table name: musics
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  sound      :string(255)
#

class Music < ActiveRecord::Base
  mount_uploader :sound, SoundUploader
end
