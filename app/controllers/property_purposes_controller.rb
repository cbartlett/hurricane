class PropertyPurposesController < ApplicationController

  layout "urla"
  
  # GET /property_purposes
  # GET /property_purposes.xml
  def index
    @property_purposes = PropertyPurpose.find(:all)
    
    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @property_purposes.to_xml }
    end
  end

  # GET /property_purposes/1
  # GET /property_purposes/1.xml
  def show
    @property_purpose = PropertyPurpose.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @property_purpose.to_xml }
    end
  end

  # GET /property_purposes/new
  def new
    @property_purpose = PropertyPurpose.new
    
    respond_to do |format|
      format.html # new.rhtml
      format.js   # new.rjs  << added for P/C >>
      format.xml  { render :xml => @asset.to_xml }
    end
  end

  # GET /property_purposes/1;edit
  def edit
    @property_purpose = PropertyPurpose.find(params[:id])
  end

  # POST /property_purposes
  # POST /property_purposes.xml
  def create
    @property_purpose = PropertyPurpose.new(params[:property_purpose])

    respond_to do |format|
      if @property_purpose.save
        flash[:notice] = 'PropertyPurpose was successfully created.'
        format.html { redirect_to property_purpose_url(@property_purpose) }
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { head :created, :location => property_purpose_url(@property_purpose) }
      else
        format.html { render :action => "new" }
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { render :xml => @property_purpose.errors.to_xml }
      end
    end
  end

  # PUT /property_purposes/1
  # PUT /property_purposes/1.xml
  def update
    @property_purpose = PropertyPurpose.find(params[:id])

    respond_to do |format|
      if @property_purpose.update_attributes(params[:property_purpose])
        flash[:notice] = 'PropertyPurpose was successfully updated.'
        format.html { redirect_to property_purpose_url(@property_purpose) }
        format.js   # render update.rjs  << added for P/C >>
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.js   # render update.rjs  << added for P/C >>
        format.xml  { render :xml => @property_purpose.errors.to_xml }
      end
    end
  end

  # DELETE /property_purposes/1
  # DELETE /property_purposes/1.xml
  def destroy
    @property_purpose = PropertyPurpose.find(params[:id])
    @property_purpose.destroy

    respond_to do |format|
      format.html { redirect_to property_purposes_url }
      format.js   # render destroy.rjs  << added for P/C >>
      format.xml  { head :ok }
    end
  end
end
