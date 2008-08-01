class LoanApplicationsController < ApplicationController
  
  layout "URLA"
  
  # GET /loan_applications
  # GET /loan_applications.xml
  def index
    @loan_applications = LoanApplication.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @loan_applications.to_xml }
    end
  end

  # GET /loan_applications/1
  # GET /loan_applications/1.xml
  def show
    @loan_application = LoanApplication.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @loan_application.to_xml }
    end
  end

  # GET /loan_applications/new
  def new
    @loan_application = LoanApplication.new
  end

  # GET /loan_applications/1;edit
  def edit
    @loan_application = LoanApplication.find(params[:id])
  end

  # POST /loan_applications
  # POST /loan_applications.xml
  def create
    @loan_application = LoanApplication.new(params[:loan_application])
    logger.info("the borrower name as assigned to loan app is: #{@loan_application.borrower_name}.")

    # create the entire loan app structure which includes some children
    #
    # for now we will render borrower as first section so make that an instance variable
    
    #children of the loan app
    housing_expense = HousingExpense.new
    mortgage_term = MortgageTerm.new
    property_purpose = PropertyPurpose.new
    transaction_detail = TransactionDetail.new 
    
    @borrower = Borrower.new
    @borrower.borrower_last_name = params[:loan_application][:borrower_name]
    logger.info("the borrower name is: #{params[:loan_application][:borrower_name]}.")

    #children of the borrower
    borrower_declaration = Declaration.new
    borrower_government_monitoring = GovernmentMonitoring.new
    
    # need to create all the "standard" income types
    # borrower_income

    if params[:loan_application][:coborrower_indicator] = "1"
        coborrower = Borrower.new
        coborrower.borrower_last_name = params[:loan_application][:borrower_name]
 
        #children of the co-borrower
        coborrower_declarations = Declaration.new
        coborrower_government_monitoring = GovernmentMonitoring.new
    
        # need to create all the "standard" income types
        # coborrower_income
    end

    respond_to do |format|
      if @loan_application.save  
        @loan_application.borrowers << @borrower
        
        flash[:notice] = 'LoanApplication was successfully created.'
#        format.html { redirect_to loan_application_url(@loan_application) }
        format.html { redirect_to borrowers_url(@loan_application) }
#        format.html { redirect_to borrower_url(:loan_application_id => @loan_application.id) }
        format.xml  { head :created, :location => loan_application_url(@loan_application) }
      else
        flash[:notice] = 'you have been deceived.'
        format.html { render :action => "new" }
        format.xml  { render :xml => @loan_application.errors.to_xml }
      end
    end
  end

  # PUT /loan_applications/1
  # PUT /loan_applications/1.xml
  def update
    @loan_application = LoanApplication.find(params[:id])

    respond_to do |format|
      if @loan_application.update_attributes(params[:loan_application])
        flash[:notice] = 'LoanApplication was successfully updated.'
        format.html { redirect_to loan_application_url(@loan_application) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @loan_application.errors.to_xml }
      end
    end
  end

  # DELETE /loan_applications/1
  # DELETE /loan_applications/1.xml
  def destroy
    @loan_application = LoanApplication.find(params[:id])
    @loan_application.destroy

    respond_to do |format|
      format.html { redirect_to loan_applications_url }
      format.xml  { head :ok }
    end
  end
end
