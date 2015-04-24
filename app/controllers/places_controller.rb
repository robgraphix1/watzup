class PlacesController < ApplicationController
	def index
		# SELECT * FROM places;
		@places = Place.all
		#render :json => @places
	end

end
