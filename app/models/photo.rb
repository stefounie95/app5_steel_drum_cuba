# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  galery_id  :integer
#  image      :string(255)
#

class Photo < ActiveRecord::Base
 
  belongs_to :galery
  mount_uploader :image, ImageUploader
  validates :image, presence: true
end
