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

class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	after_create :send_comment_email

	RATINGS = {

		'one star' => '1_star',
		'two stars' => '2_star',
		'three stars' => '3_star',
		'four stars' => '4_star',
		'five stars' => '5_star'
	}

	def humanized_rating
		RATINGS.invert[self.rating]
	end
end
