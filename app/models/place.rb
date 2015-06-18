# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  address     :text
#  description :string(255)
#  user_id     :integer
#  latitude    :float
#  longitude   :float
#

class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :photos
	
	geocoded_by :address
	after_validation :geocode
	validates :name, :presence => true, :length => { :minimum => 3 }
	validates :address, :presence => true
	validates :description, :presence => true
end
