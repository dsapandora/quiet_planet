class RainInfosController < ApplicationController
  before_action :set_rain_info, only: [:show, :edit, :update, :destroy]

  # GET /rain_infos
  # GET /rain_infos.json
  def index
    @rain_infos = RainInfo.all
  end

  # GET /rain_infos/1
  # GET /rain_infos/1.json
  def show
  end

  # GET /rain_infos/new
  def new
    @rain_info = RainInfo.new
  end

  # GET /rain_infos/1/edit
  def edit
  end

  # POST /rain_infos
  # POST /rain_infos.json
  def create
    @rain_info = RainInfo.new(rain_info_params)

    respond_to do |format|
      if @rain_info.save
        format.html { redirect_to @rain_info, notice: 'Rain info was successfully created.' }
        format.json { render :show, status: :created, location: @rain_info }
      else
        format.html { render :new }
        format.json { render json: @rain_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rain_infos/1
  # PATCH/PUT /rain_infos/1.json
  def update
    respond_to do |format|
      if @rain_info.update(rain_info_params)
        format.html { redirect_to @rain_info, notice: 'Rain info was successfully updated.' }
        format.json { render :show, status: :ok, location: @rain_info }
      else
        format.html { render :edit }
        format.json { render json: @rain_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rain_infos/1
  # DELETE /rain_infos/1.json
  def destroy
    @rain_info.destroy
    respond_to do |format|
      format.html { redirect_to rain_infos_url, notice: 'Rain info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rain_info
      @rain_info = RainInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rain_info_params
      params.require(:rain_info).permit(:date, :value, :city_id)
    end
end
