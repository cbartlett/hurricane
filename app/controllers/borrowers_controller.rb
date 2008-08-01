class BorrowersController < ApplicationController
 
   layout "URLA" 
   
   before_filter :find_loan_application
   
  # GET /borrowers
  # GET /borrowers.xml
  def index
    @borrowers = @loan_application.borrowers.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @borrowers.to_xml }
    end
  end

  # GET /borrowers/1
  # GET /borrowers/1.xml
  def show
    @borrower = Borrower.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @borrower.to_xml }
    end
  end

  # GET /borrowers/new
  def new
    @borrower = Borrower.new
  end

  # GET /borrowers/1;edit
  def edit
    @borrower = Borrower.find(params[:id])
  end

  # POST /borrowers
  # POST /borrowers.xml
  def create
    @borrower = Borrower.new(params[:borrower])

    respond_to do |format|
      if @borrower.save
        flash[:notice] = 'Borrower was successfully created.'
        format.html { redirect_to borrower_url(@borrower) }
        format.xml  { head :created, :location => borrower_url(@borrower) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @borrower.errors.to_xml }
      end
    end
  end

  # PUT /borrowers/1
  # PUT /borrowers/1.xml
  def update
    @borrower = Borrower.find(params[:id])
    
    respond_to do |format|
      
      if @borrower.update_attributes(params[:borrower])
        flash[:notice] = 'Borrower was successfully updated.'
        format.html { redirect_to borrower_url(@borrower) }
        format.xml  { head :ok }  
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @borrower.errors.to_xml }
      end
    end
  end
  
  # DELETE /borrowers/1
  # DELETE /borrowers/1.xml
  def destroy
    @borrower = Borrower.find(params[:id])
    @borrower.destroy

    respond_to do |format|
      format.html { redirect_to borrowers_url }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def find_loan_application
    @loan_application_id = params[:loan_application_id]
    redirect_to loan_applications_url unless @loan_application_id
    @loan_application = LoanApplication.find(@loan_application_id)
  end
end
