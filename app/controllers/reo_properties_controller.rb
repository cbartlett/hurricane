class ReoPropertiesController < ApplicationController
  
  layout "urla"
  
  # GET /reo_properties
  # GET /reo_properties.xml
  def index
    @reo_properties = REOProperty.find(:all)

     respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @reo_properties.to_xml }
    end
  end

  # GET /reo_properties/1
  # GET /reo_properties/1.xml
  def show
    @reo_property = REOProperty.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @reo_property.to_xml }
    end
  end

  # GET /reo_properties/new
  def new
    @reo_property = REOProperty.new
    
    respond_to do |format|
      format.html # new.rhtml
      format.js   # new.rjs  << added for P/C >>
      format.xml  { render :xml => @reo_property.to_xml }
    end

  end

  # GET /reo_properties/1;edit
  def edit
    @reo_property = REOProperty.find(params[:id])
  end

  # POST /reo_properties
  # POST /reo_properties.xml
  def create
    @reo_property = REOProperty.new(params[:reo_property])

    respond_to do |format|
      if @reo_property.save
        flash[:notice] = 'REOProperty was successfully created.'
        format.html { redirect_to reo_property_url(@reo_property) } 
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { head :created, :location => reo_property_url(@reo_property) }
      else
        format.html { render :action => "new" }
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { render :xml => @reo_property.errors.to_xml }
      end
    end
  end

  # PUT /reo_properties/1
  # PUT /reo_properties/1.xml
  def update
    @reo_property = REOProperty.find(params[:id])

    respond_to do |format|
      if @reo_property.update_attributes(params[:reo_property])
        flash[:notice] = 'REOProperty was successfully updated.'
        
        format.js   # render update.rjs  << added for P/C >>
        format.html { redirect_to reo_property_url(@reo_property)}
        format.xml  { head :ok }
      else
        format.js   # render update.rjs  << added for P/C >>
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reo_property.errors.to_xml }
      end
    end
  end

  # DELETE /reo_properties/1
  # DELETE /reo_properties/1.xml
  def destroy
    @reo_property = REOProperty.find(params[:id])
    @reo_property.destroy

    respond_to do |format|
      format.js   # render destroy.rjs  << added for P/C >>
      format.html { redirect_to reo_properties_url }
      format.xml  { head :ok }
    end
  end
end
