class PolutionInfosController < ApplicationController
  before_action :set_polution_info, only: [:show, :edit, :update, :destroy]

  # GET /polution_infos
  # GET /polution_infos.json
  def index
    @polution_infos = PolutionInfo.all
  end

  # GET /polution_infos/1
  # GET /polution_infos/1.json
  def show
  end

  # GET /polution_infos/new
  def new
    @polution_info = PolutionInfo.new
  end

  # GET /polution_infos/1/edit
  def edit
  end

  # POST /polution_infos
  # POST /polution_infos.json
  def create
    @polution_info = PolutionInfo.new(polution_info_params)

    respond_to do |format|
      if @polution_info.save
        format.html { redirect_to @polution_info, notice: 'Polution info was successfully created.' }
        format.json { render :show, status: :created, location: @polution_info }
      else
        format.html { render :new }
        format.json { render json: @polution_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polution_infos/1
  # PATCH/PUT /polution_infos/1.json
  def update
    respond_to do |format|
      if @polution_info.update(polution_info_params)
        format.html { redirect_to @polution_info, notice: 'Polution info was successfully updated.' }
        format.json { render :show, status: :ok, location: @polution_info }
      else
        format.html { render :edit }
        format.json { render json: @polution_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polution_infos/1
  # DELETE /polution_infos/1.json
  def destroy
    @polution_info.destroy
    respond_to do |format|
      format.html { redirect_to polution_infos_url, notice: 'Polution info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polution_info
      @polution_info = PolutionInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def polution_info_params
      params.require(:polution_info).permit(:date, :vcdapstrat, :vcdaptrop, :amfstrat, :latidude, :logitude, :city_id)
    end
end
