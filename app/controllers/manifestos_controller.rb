class ManifestosController < ApplicationController
  # GET /manifestos
  # GET /manifestos.json
  def index
    @manifestos = Manifesto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manifestos }
    end
  end

  # GET /manifestos/1
  # GET /manifestos/1.json
  def show
    @manifesto = Manifesto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manifesto }
    end
  end

  # GET /manifestos/new
  # GET /manifestos/new.json
  def new
    @manifesto = Manifesto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manifesto }
    end
  end

  # GET /manifestos/1/edit
  def edit
    @manifesto = Manifesto.find(params[:id])
  end

  # POST /manifestos
  # POST /manifestos.json
  def create
    @manifesto = Manifesto.new(params[:manifesto])

    respond_to do |format|
      if @manifesto.save
        format.html { redirect_to @manifesto, notice: 'Manifesto was successfully created.' }
        format.json { render json: @manifesto, status: :created, location: @manifesto }
      else
        format.html { render action: "new" }
        format.json { render json: @manifesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /manifestos/1
  # PUT /manifestos/1.json
  def update
    @manifesto = Manifesto.find(params[:id])

    respond_to do |format|
      if @manifesto.update_attributes(params[:manifesto])
        format.html { redirect_to @manifesto, notice: 'Manifesto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @manifesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manifestos/1
  # DELETE /manifestos/1.json
  def destroy
    @manifesto = Manifesto.find(params[:id])
    @manifesto.destroy

    respond_to do |format|
      format.html { redirect_to manifestos_url }
      format.json { head :no_content }
    end
  end
end
