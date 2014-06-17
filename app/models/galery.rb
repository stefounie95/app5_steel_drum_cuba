# == Schema Information
#
# Table name: galeries
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Galery < ActiveRecord::Base
   has_many :photos
   # mount_uploader :image, ImageUploader
end
