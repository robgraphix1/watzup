# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  message    :text
#  rating     :string(255)
#  user_id    :integer
#  place_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "humanized_rating" do
  	place = FactoryGirl.create(:place)
  	comment = FactoryGirl.create(:comment)

  	expected = 'five stars'
  	actual = comment.humanized_rating
  	assert_equal expected, actual
  end
  	
  
end
