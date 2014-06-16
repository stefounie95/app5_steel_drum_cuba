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

require 'test_helper'

class ConcertTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
