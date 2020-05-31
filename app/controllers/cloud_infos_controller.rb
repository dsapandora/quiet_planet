class CloudInfosController < ApplicationController
  before_action :set_cloud_info, only: [:show, :edit, :update, :destroy]

  # GET /cloud_infos
  # GET /cloud_infos.json
  def index
    @cloud_infos = CloudInfo.all
  end

  # GET /cloud_infos/1
  # GET /cloud_infos/1.json
  def show
  end

  # GET /cloud_infos/new
  def new
    @cloud_info = CloudInfo.new
  end

  # GET /cloud_infos/1/edit
  def edit
  end

  # POST /cloud_infos
  # POST /cloud_infos.json
  def create
    @cloud_info = CloudInfo.new(cloud_info_params)

    respond_to do |format|
      if @cloud_info.save
        format.html { redirect_to @cloud_info, notice: 'Cloud info was successfully created.' }
        format.json { render :show, status: :created, location: @cloud_info }
      else
        format.html { render :new }
        format.json { render json: @cloud_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloud_infos/1
  # PATCH/PUT /cloud_infos/1.json
  def update
    respond_to do |format|
      if @cloud_info.update(cloud_info_params)
        format.html { redirect_to @cloud_info, notice: 'Cloud info was successfully updated.' }
        format.json { render :show, status: :ok, location: @cloud_info }
      else
        format.html { render :edit }
        format.json { render json: @cloud_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloud_infos/1
  # DELETE /cloud_infos/1.json
  def destroy
    @cloud_info.destroy
    respond_to do |format|
      format.html { redirect_to cloud_infos_url, notice: 'Cloud info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloud_info
      @cloud_info = CloudInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cloud_info_params
      params.require(:cloud_info).permit(:date, :amfstrat, :latidude, :amftropclear, :amftropcloudy, :logitude, :city_id)
    end
end
