
class VirusesController < ApplicationController
  # GET /viruses
  # GET /viruses.json
  def index
    @viruses = Virus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @viruses }
    end
  end

  # GET /viruses/1
  # GET /viruses/1.json
  def show
    @virus = Virus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @virus }
    end
  end

  # GET /viruses/new
  # GET /viruses/new.json
  def new
    @virus = Virus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @virus }
    end
  end

  # GET /viruses/1/edit
  def edit
    @virus = Virus.find(params[:id])
  end

  # POST /viruses
  # POST /viruses.json  curl -H "Content-Type:application/json" -H "Accept:application/json" -X POST -d '{"virus":{"user_id":1,"name":"CurlTestVirus"}}' http://localhost:5000/viruses
  def create
    @virus = Virus.new(params[:virus])

    respond_to do |format|
      if @virus.save
        format.html { redirect_to @virus, notice: 'Virus was successfully created.' }
        format.json { render json: @virus, status: :created, location: @virus }
      else
        format.html { render action: "new" }
        format.json { render json: @virus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /viruses/1
  # PUT /viruses/1.json
  def update
    @virus = Virus.find(params[:id])

    respond_to do |format|
      if @virus.update_attributes(params[:virus])
        format.html { redirect_to @virus, notice: 'Virus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @virus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viruses/1
  # DELETE /viruses/1.json
  def destroy
    @virus = Virus.find(params[:id])
    @virus.destroy

    respond_to do |format|
      format.html { redirect_to viruses_url }
      format.json { head :no_content }
    end
  end
end
