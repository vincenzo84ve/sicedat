class SeccionesController < ApplicationController
  # GET /secciones
  # GET /secciones.xml
  def index
    @secciones = Seccione.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @secciones }
    end
  end

  # GET /secciones/1
  # GET /secciones/1.xml
  def show
    @seccione = Seccione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seccione }
    end
  end

  # GET /secciones/new
  # GET /secciones/new.xml
  def new
    @seccione = Seccione.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seccione }
    end
  end

  # GET /secciones/1/edit
  def edit
    @seccione = Seccione.find(params[:id])
  end

  # POST /secciones
  # POST /secciones.xml
  def create
    @seccione = Seccione.new(params[:seccione])

    respond_to do |format|
      if @seccione.save
        format.html { redirect_to(@seccione, :notice => 'Seccione was successfully created.') }
        format.xml  { render :xml => @seccione, :status => :created, :location => @seccione }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @seccione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /secciones/1
  # PUT /secciones/1.xml
  def update
    @seccione = Seccione.find(params[:id])

    respond_to do |format|
      if @seccione.update_attributes(params[:seccione])
        format.html { redirect_to(@seccione, :notice => 'Seccione was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seccione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /secciones/1
  # DELETE /secciones/1.xml
  def destroy
    @seccione = Seccione.find(params[:id])
    @seccione.destroy

    respond_to do |format|
      format.html { redirect_to(secciones_url) }
      format.xml  { head :ok }
    end
  end
end
