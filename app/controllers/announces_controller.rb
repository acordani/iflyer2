class AnnouncesController < ApplicationController

	def new
    	@announce = Announce.new
  	end

  	def create
	    @announce = Announce.new(announce_params)
	    @announce.address = params[:address]
	    @announce.locality = params[:locality]
	    @announce.user_id = current_user.id
	    if @announce.save
	      redirect_to announce_path(@announce)
	    end
  	end

  	def show
	    @announce = Announce.find(params[:id])
	    @markers = Gmaps4rails.build_markers(@announce) do |announce, marker|
	      marker.lat announce.latitude
	      marker.lng announce.longitude
	    end

  	end

  	private

  	def announce_params
    	params.require(:announce).permit(:price, :description, :announce_type, :bed, :bath, :surface, :title,:latitude, :longitude, :address, :class_energy, :ges,:room, :locality, photos: [] )
  	end

end
