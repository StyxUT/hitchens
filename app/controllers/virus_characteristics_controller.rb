
class VirusCharacteristicsController < ApplicationController
  # GET /virus_characteristics
  # GET /virus_characteristics.json
  def index
    @virus_characteristics = VirusCharacteristic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @virus_characteristics }
    end
  end

  # GET /virus_characteristics/1
  # GET /virus_characteristics/1.json
  def show
    @virus_characteristic = VirusCharacteristic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @virus_characteristic }
    end
  end

  # GET /virus_characteristics/new
  # GET /virus_characteristics/new.json
  def new
    @virus_characteristic = VirusCharacteristic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @virus_characteristic }
    end
  end

  # GET /virus_characteristics/1/edit
  def edit
    @virus_characteristic = VirusCharacteristic.find(params[:id])
  end

  # POST /virus_characteristics
  # POST /virus_characteristics.json
  def create
    @virus_characteristic = VirusCharacteristic.new(params[:virus_characteristic])

    respond_to do |format|
      if @virus_characteristic.save
        format.html { redirect_to @virus_characteristic, notice: 'Virus characteristic was successfully created.' }
        format.json { render json: @virus_characteristic, status: :created, location: @virus_characteristic }
      else
        format.html { render action: "new" }
        format.json { render json: @virus_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /virus_characteristics/1
  # PUT /virus_characteristics/1.json
  def update
    @virus_characteristic = VirusCharacteristic.find(params[:id])

    respond_to do |format|
      if @virus_characteristic.update_attributes(params[:virus_characteristic])
        format.html { redirect_to @virus_characteristic, notice: 'Virus characteristic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @virus_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /virus_characteristics/1
  # DELETE /virus_characteristics/1.json
  def destroy
    @virus_characteristic = VirusCharacteristic.find(params[:id])
    @virus_characteristic.destroy

    respond_to do |format|
      format.html { redirect_to virus_characteristics_url }
      format.json { head :no_content }
    end
  end
end
