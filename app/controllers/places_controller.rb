class PlacesController < ApplicationController
	def index
		# SELECT * FROM places;
		#@places = {};
		@places = Place.all.paginate(:page => params[:page], :per_page => 5)
		#render :json => @places
	end

	def new
		@place = Place.new
	end

	def create
		Place.create(place_params)
		redirect_to root_path
	end

	private

	def place_params
		params.require(:place).permit(:name, :description, :address)
	end

end
