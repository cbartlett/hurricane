class AssetsController < ApplicationController

  layout "urla"
  
  # GET /assets
  # GET /assets.xml
  def index
    @assets = Asset.find(:all)

     respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @assets.to_xml }
    end
  end

  # GET /assets/1
  # GET /assets/1.xml
  def show
    @asset = Asset.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @asset.to_xml }
    end
  end

  # GET /assets/new
  def new
    @asset = Asset.new
    
    respond_to do |format|
      format.html # new.rhtml
      format.js   # new.rjs  << added for P/C >>
      format.xml  { render :xml => @asset.to_xml }
    end

  end

  # GET /assets/1;edit
  def edit
    @asset = Asset.find(params[:id])
  end

  # POST /assets
  # POST /assets.xml
  def create
    @asset = Asset.new(params[:asset])

    respond_to do |format|
      if @asset.save
        flash[:notice] = 'Asset was successfully created.'
        format.html { redirect_to asset_url(@asset) } 
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { head :created, :location => asset_url(@asset) }
      else
        format.html { render :action => "new" }
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { render :xml => @asset.errors.to_xml }
      end
    end
  end

  # PUT /assets/1
  # PUT /assets/1.xml
  def update
    @asset = Asset.find(params[:id])

    respond_to do |format|
      if @asset.update_attributes(params[:asset])
        flash[:notice] = 'Asset was successfully updated.'
        
        format.js   # render update.rjs  << added for P/C >>
        format.html { redirect_to asset_url(@asset)}
        format.xml  { head :ok }
      else
        format.js   # render update.rjs  << added for P/C >>
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asset.errors.to_xml }
      end
    end
  end

  # DELETE /assets/1
  # DELETE /assets/1.xml
  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy

    respond_to do |format|
      format.js   # render destroy.rjs  << added for P/C >>
      format.html { redirect_to assets_url }
      format.xml  { head :ok }
    end
  end
end
