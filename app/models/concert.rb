# == Schema Information
#
# Table name: concerts
#
#  id         :integer          not null, primary key
#  date       :datetime
#  nom        :string(255)
#  ville      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Concert < ActiveRecord::Base
end
