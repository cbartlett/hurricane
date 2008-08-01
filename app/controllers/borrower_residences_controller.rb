class BorrowerResidencesController < ApplicationController
  
  layout "URLA" 
     
  # GET /borrower_residences
  # GET /borrower_residences.xml
  def index
    @borrower_residences = BorrowerResidence.find(:all)

     respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @borrower_residences.to_xml }
    end
  end

  # GET /borrower_residences/1
  # GET /borrower_residences/1.xml
  def show
    @borrower_residence = BorrowerResidence.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @borrower_residence.to_xml }
    end
  end

  # GET /borrower_residences/new
  def new
    @borrower_residence = BorrowerResidence.new
    
    respond_to do |format|
      format.html # new.rhtml
      format.js   # new.rjs  << added for P/C >>
      format.xml  { render :xml => @borrower_residence.to_xml }
    end

  end

  # GET /borrower_residences/1;edit
  def edit
    @borrower_residence = BorrowerResidence.find(params[:id])
  end

  # POST /borrower_residences
  # POST /borrower_residences.xml
  def create
    @borrower_residence = BorrowerResidence.new(params[:borrower_residence])

    respond_to do |format|
      if @borrower_residence.save
        flash[:notice] = 'BorrowerResidence was successfully created.'
        format.html { redirect_to borrower_residence_url(@borrower_residence) } 
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { head :created, :location => borrower_residence_url(@borrower_residence) }
      else
        format.html { render :action => "new" }
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { render :xml => @borrower_residence.errors.to_xml }
      end
    end
  end

  # PUT /borrower_residences/1
  # PUT /borrower_residences/1.xml
  def update
    @borrower_residence = BorrowerResidence.find(params[:id])

    respond_to do |format|
      if @borrower_residence.update_attributes(params[:borrower_residence])
        flash[:notice] = 'BorrowerResidence was successfully updated.'
        
        format.js   # render update.rjs  << added for P/C >>
        format.html { redirect_to borrower_residence_url(@borrower_residence)}
        format.xml  { head :ok }
      else
        format.js   # render update.rjs  << added for P/C >>
        format.html { render :action => "edit" }
        format.xml  { render :xml => @borrower_residence.errors.to_xml }
      end
    end
  end

  # DELETE /borrower_residences/1
  # DELETE /borrower_residences/1.xml
  def destroy
    @borrower_residence = BorrowerResidence.find(params[:id])
    @borrower_residence.destroy

    respond_to do |format|
      format.js   # render destroy.rjs  << added for P/C >>
      format.html { redirect_to borrower_residences_url }
      format.xml  { head :ok }
    end
  end
end
