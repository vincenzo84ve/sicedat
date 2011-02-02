class InscripcionesController < ApplicationController
  # GET /inscripciones
  # GET /inscripciones.xml
  def index
    @inscripciones = Inscripcione.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inscripciones }
    end
  end

  # GET /inscripciones/1
  # GET /inscripciones/1.xml
  def show
    @inscripcione = Inscripcione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inscripcione }
    end
  end

  # Inscribir varios alumnos a la vez
  def edit_individual
  end

  def update_individual
  end

  # GET /inscripciones/new
  # GET /inscripciones/new.xml
  def new
    @inscripcione = Inscripcione.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inscripcione }
    end
  end

  # GET /inscripciones/1/edit
  def edit
    @seccione = Seccione.find(params[:id])
    @alumnos = Alumno.all(:order => 'cedula')
#    @inscripcione = Inscripcione.find(params[:id])
  end

  # POST /inscripciones
  # POST /inscripciones.xml
  def create
    @inscripcione = Inscripcione.new(params[:inscripcione])

    respond_to do |format|
      if @inscripcione.save
        format.html { redirect_to(@inscripcione, :notice => 'Inscripcione was successfully created.') }
        format.xml  { render :xml => @inscripcione, :status => :created, :location => @inscripcione }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inscripcione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inscripciones/1
  # PUT /inscripciones/1.xml
  def update
    @inscripcione = Inscripcione.find(params[:id])

    respond_to do |format|
      if @inscripcione.update_attributes(params[:inscripcione])
        format.html { redirect_to(@inscripcione, :notice => 'Inscripcione was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inscripcione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inscripciones/1
  # DELETE /inscripciones/1.xml
  def destroy
    @inscripcione = Inscripcione.find(params[:id])
    @inscripcione.destroy

    respond_to do |format|
      format.html { redirect_to(inscripciones_url) }
      format.xml  { head :ok }
    end
  end
end
