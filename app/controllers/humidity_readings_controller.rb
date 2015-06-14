class HumidityReadingsController < ApplicationController
  before_action :set_humidity_reading, only: [:show, :edit, :update, :destroy]

  # GET /humidity_readings
  # GET /humidity_readings.json
  def index
    @humidity_readings = HumidityReading.all
  end

  # GET /humidity_readings/1
  # GET /humidity_readings/1.json
  def show
  end

  # GET /humidity_readings/new
  def new
    @humidity_reading = HumidityReading.new
  end

  # GET /humidity_readings/1/edit
  def edit
  end

  # POST /humidity_readings
  # POST /humidity_readings.json
  def create
    @humidity_reading = HumidityReading.new(humidity_reading_params)

    respond_to do |format|
      if @humidity_reading.save
        format.html { redirect_to @humidity_reading, notice: 'Humidity reading was successfully created.' }
        format.json { render :show, status: :created, location: @humidity_reading }
      else
        format.html { render :new }
        format.json { render json: @humidity_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /humidity_readings/1
  # PATCH/PUT /humidity_readings/1.json
  def update
    respond_to do |format|
      if @humidity_reading.update(humidity_reading_params)
        format.html { redirect_to @humidity_reading, notice: 'Humidity reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @humidity_reading }
      else
        format.html { render :edit }
        format.json { render json: @humidity_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humidity_readings/1
  # DELETE /humidity_readings/1.json
  def destroy
    @humidity_reading.destroy
    respond_to do |format|
      format.html { redirect_to humidity_readings_url, notice: 'Humidity reading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_humidity_reading
      @humidity_reading = HumidityReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def humidity_reading_params
      params.require(:humidity_reading).permit(:humidity)
    end
end
