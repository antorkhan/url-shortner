class UrlMapsController < ApplicationController
  before_action :set_url_map, only: [:show, :edit, :update, :destroy]

  # GET /url_maps
  # GET /url_maps.json
  def index
    @url_maps = UrlMap.all
  end

  # GET /url_maps/1
  # GET /url_maps/1.json
  def show
  end

  # GET /url_maps/new
  def new
    @url_map = UrlMap.new
  end

  # GET /url_maps/1/edit
  def edit
  end

  # POST /url_maps
  # POST /url_maps.json
  def create
    @url_map = UrlMap.new(url_map_params)

    respond_to do |format|
      if @url_map.save
        format.html { redirect_to @url_map, notice: "#{request.base_url}/#{@url_map.id}" }
        format.json { render :show, status: :created, location: @url_map }
      else
        format.html { render :new }
        format.json { render json: @url_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /url_maps/1
  # PATCH/PUT /url_maps/1.json
  def update
    respond_to do |format|
      if @url_map.update(url_map_params)
        format.html { redirect_to @url_map, notice: 'Url map was successfully updated.' }
        format.json { render :show, status: :ok, location: @url_map }
      else
        format.html { render :edit }
        format.json { render json: @url_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /url_maps/1
  # DELETE /url_maps/1.json
  def destroy
    @url_map.destroy
    respond_to do |format|
      format.html { redirect_to url_maps_url, notice: 'Url map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def redirect
    redirect_to UrlMap.find(params[:id]).to
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url_map
      @url_map = UrlMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_map_params
      params.fetch(:url_map, {}).permit(:to)
    end
end
