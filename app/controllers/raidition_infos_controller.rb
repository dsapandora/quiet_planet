class RaiditionInfosController < ApplicationController
  before_action :set_raidition_info, only: [:show, :edit, :update, :destroy]

  # GET /raidition_infos
  # GET /raidition_infos.json
  def index
    @raidition_infos = RaiditionInfo.all
  end

  # GET /raidition_infos/1
  # GET /raidition_infos/1.json
  def show
  end

  # GET /raidition_infos/new
  def new
    @raidition_info = RaiditionInfo.new
  end

  # GET /raidition_infos/1/edit
  def edit
  end

  # POST /raidition_infos
  # POST /raidition_infos.json
  def create
    @raidition_info = RaiditionInfo.new(raidition_info_params)

    respond_to do |format|
      if @raidition_info.save
        format.html { redirect_to @raidition_info, notice: 'Raidition info was successfully created.' }
        format.json { render :show, status: :created, location: @raidition_info }
      else
        format.html { render :new }
        format.json { render json: @raidition_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raidition_infos/1
  # PATCH/PUT /raidition_infos/1.json
  def update
    respond_to do |format|
      if @raidition_info.update(raidition_info_params)
        format.html { redirect_to @raidition_info, notice: 'Raidition info was successfully updated.' }
        format.json { render :show, status: :ok, location: @raidition_info }
      else
        format.html { render :edit }
        format.json { render json: @raidition_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raidition_infos/1
  # DELETE /raidition_infos/1.json
  def destroy
    @raidition_info.destroy
    respond_to do |format|
      format.html { redirect_to raidition_infos_url, notice: 'Raidition info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raidition_info
      @raidition_info = RaiditionInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raidition_info_params
      params.require(:raidition_info).permit(:date, :terrain_reflectivity, :point_radius, :latidude, :logitude, :city_id)
    end
end
