class MuseumsController < ApplicationController
  def index
    @lat = params[:lat]
    @lng = params[:lng]
    @museums_info = MapboxService.new.museums(@lat, @lng)
  end
end
