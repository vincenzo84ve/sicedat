class EvaluacionesController < ApplicationController
  # GET /evaluaciones
  # GET /evaluaciones.xml
  def index
    @evaluaciones = Evaluacione.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @evaluaciones }
    end
  end

  # GET /evaluaciones/1
  # GET /evaluaciones/1.xml
  def show
    @evaluacione = Evaluacione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @evaluacione }
    end
  end

  # GET /evaluaciones/new
  # GET /evaluaciones/new.xml
  def new
    @evaluacione = Evaluacione.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @evaluacione }
    end
  end

  # GET /evaluaciones/1/edit
  def edit
    @evaluacione = Evaluacione.find(params[:id])
  end

  # POST /evaluaciones
  # POST /evaluaciones.xml
  def create
    @evaluacione = Evaluacione.new(params[:evaluacione])

    respond_to do |format|
      if @evaluacione.save
        format.html { redirect_to(@evaluacione, :notice => 'Evaluacione was successfully created.') }
        format.xml  { render :xml => @evaluacione, :status => :created, :location => @evaluacione }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @evaluacione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /evaluaciones/1
  # PUT /evaluaciones/1.xml
  def update
    @evaluacione = Evaluacione.find(params[:id])

    respond_to do |format|
      if @evaluacione.update_attributes(params[:evaluacione])
        format.html { redirect_to(@evaluacione, :notice => 'Evaluacione was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @evaluacione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluaciones/1
  # DELETE /evaluaciones/1.xml
  def destroy
    @evaluacione = Evaluacione.find(params[:id])
    @evaluacione.destroy

    respond_to do |format|
      format.html { redirect_to(evaluaciones_url) }
      format.xml  { head :ok }
    end
  end
end
