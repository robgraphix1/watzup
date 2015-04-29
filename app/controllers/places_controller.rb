class PlacesController < ApplicationController
	def index
		# SELECT * FROM places;
		@places = {};
		@places = Place.all.paginate(:page => params[:page], :per_page => 5)
		#render :json => @places
	end

	def new
		@place = Place.new
	end

end
