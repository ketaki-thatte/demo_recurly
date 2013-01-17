class GeomodelsController < ApplicationController

  def new
    @geo_model=Geomodel.new
  end

  def create
    @geo_model = Geomodel.new(params[:geomodel])
    if @geo_model.save
      logger.info "###############{@geo_model}"
      redirect_to @geo_model
    else
      render 'new'
    end
  end

  def show
    @geo_model=Geomodel.find(params[:id])
  end

  def index
    @geo_models =Geomodel.all
  end

end
