# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  imageable_id   :integer
#  imageable_type :string
#  image          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
