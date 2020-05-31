class KomunesController < ApplicationController
  before_action :set_komune, only: [:show, :edit, :update, :destroy]

  # GET /komunes
  # GET /komunes.json
  def index
    @komunes = Komune.all
  end

  # GET /komunes/1
  # GET /komunes/1.json
  def show
  end

  # GET /komunes/new
  def new
    @komune = Komune.new
  end

  # GET /komunes/1/edit
  def edit
  end

  # POST /komunes
  # POST /komunes.json
  def create
    @komune = Komune.new(komune_params)

    respond_to do |format|
      if @komune.save
        format.html { redirect_to @komune, notice: 'Komune was successfully created.' }
        format.json { render :show, status: :created, location: @komune }
      else
        format.html { render :new }
        format.json { render json: @komune.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /komunes/1
  # PATCH/PUT /komunes/1.json
  def update
    respond_to do |format|
      if @komune.update(komune_params)
        format.html { redirect_to @komune, notice: 'Komune was successfully updated.' }
        format.json { render :show, status: :ok, location: @komune }
      else
        format.html { render :edit }
        format.json { render json: @komune.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /komunes/1
  # DELETE /komunes/1.json
  def destroy
    @komune.destroy
    respond_to do |format|
      format.html { redirect_to komunes_url, notice: 'Komune was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_komune
      @komune = Komune.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def komune_params
      params.require(:komune).permit(:value, :photo, :co2_foot_print_value, :latitude, :logitude, :user)
    end
end
