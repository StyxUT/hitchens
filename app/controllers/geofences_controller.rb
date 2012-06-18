
class GeofencesController < ApplicationController
  # GET /geofences
  # GET /geofences.json
  def index
    @geofences = Geofence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @geofences }
    end
  end

  # GET /geofences/1
  # GET /geofences/1.json
  def show
    @geofence = Geofence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @geofence }
    end
  end

  # GET /geofences/new
  # GET /geofences/new.json
  def new
    @geofence = Geofence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @geofence }
    end
  end

  # GET /geofences/1/edit
  def edit
    @geofence = Geofence.find(params[:id])
  end

  # POST /geofences
  # POST /geofences.json  curl -H "Content-Type:application/json" -H "Accept:application/json" -X POST -d '{"geofence":{"user_id":1,"region":888,"lat":901,"long":101,"radius":101}}' http://hitchens.herokuapp.com/geofences
  def create
    @geofence = Geofence.new(params[:geofence])

    respond_to do |format|
      if @geofence.save
        format.html { redirect_to @geofence, notice: 'Geofence was successfully created.' }
        format.json { render json: @geofence, status: :created, location: @geofence }
      else
        format.html { render action: "new" }
        format.json { render json: @geofence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /geofences/1
  # PUT /geofences/1.json
  def update
    @geofence = Geofence.find(params[:id])

    respond_to do |format|
      if @geofence.update_attributes(params[:geofence])
        format.html { redirect_to @geofence, notice: 'Geofence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @geofence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geofences/1
  # DELETE /geofences/1.json
  def destroy
    @geofence = Geofence.find(params[:id])
    @geofence.destroy

    respond_to do |format|
      format.html { redirect_to geofences_url }
      format.json { head :no_content }
    end
  end
end
