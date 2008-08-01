class LiabilitiesController < ApplicationController
  
  layout "urla"
  
  # GET /liabilities
  # GET /liabilities.xml
  def index
    @liabilities = Liability.find(:all)

     respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @liabilities.to_xml }
    end
  end

  # GET /liabilities/1
  # GET /liabilities/1.xml
  def show
    @liability = Liability.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @liability.to_xml }
    end
  end

  # GET /liabilities/new
  def new
    @liability = Liability.new
    
    respond_to do |format|
      format.html # new.rhtml
      format.js   # new.rjs  << added for P/C >>
      format.xml  { render :xml => @liability.to_xml }
    end

  end

  # GET /liabilities/1;edit
  def edit
    @liability = Liability.find(params[:id])
  end

  # POST /liabilities
  # POST /liabilities.xml
  def create
    @liability = Liability.new(params[:liability])

    respond_to do |format|
      if @liability.save
        flash[:notice] = 'Liability was successfully created.'
        format.html { redirect_to liability_url(@liability) } 
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { head :created, :location => liability_url(@liability) }
      else
        format.html { render :action => "new" }
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { render :xml => @liability.errors.to_xml }
      end
    end
  end

  # PUT /liabilities/1
  # PUT /liabilities/1.xml
  def update
    @liability = Liability.find(params[:id])

    respond_to do |format|
      if @liability.update_attributes(params[:liability])
        flash[:notice] = 'Liability was successfully updated.'
        
        format.js   # render update.rjs  << added for P/C >>
        format.html { redirect_to liability_url(@liability)}
        format.xml  { head :ok }
      else
        format.js   # render update.rjs  << added for P/C >>
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liability.errors.to_xml }
      end
    end
  end

  # DELETE /liabilities/1
  # DELETE /liabilities/1.xml
  def destroy
    @liability = Liability.find(params[:id])
    @liability.destroy

    respond_to do |format|
      format.js   # render destroy.rjs  << added for P/C >>
      format.html { redirect_to liabilities_url }
      format.xml  { head :ok }
    end
  end
end
