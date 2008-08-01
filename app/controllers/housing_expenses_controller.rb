class HousingExpensesController < ApplicationController

  layout "urla"
  
  # GET /housing_expenses
  # GET /housing_expenses.xml
  
  @help = "test"

  def present_expense_total
    
    @present_total=params[:housing_expense_present_rent_amount].to_i +
    params[:housing_expense_present_other_mortgage_loan_principal_and_interest_amount].to_i +
    params[:housing_expense_present_hazard_insurance_amount].to_i
    
#     respond_to do |format|
#      format.html # index.rhtml
#      format.xml  { render :xml => @housing_expenses.to_xml }
#    end
     render :partial => 'present_expense_total', :layout=>false
   end
   
   def proposed_expense_total
     
    @proposed_total=params[:housing_expense_proposed_first_mortgage_principal_and_interest_amount]

    if @proposed_total.to_s == "a"
      flash[:notice] = 'Not a valid number dude.'
      params[:housing_expense_proposed_first_mortgage_principal_and_interest_amount] = nil  
      @proposed_total = nil
    else
    render :partial => 'proposed_expense_total', :layout=>false
    end
   
#      respond_to do |format|
#      format.html # index.rhtml
#      format.xml  { render :xml => @housing_expenses.to_xml }
#    end
  end
  
  def index
    @housing_expenses = HousingExpense.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @housing_expenses.to_xml }
    end
  end

  # GET /housing_expenses/1
  # GET /housing_expenses/1.xml
  def show
    @housing_expense = HousingExpense.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @housing_expense.to_xml }
    end
  end

  # GET /housing_expenses/new
  def new
    @housing_expense = HousingExpense.new
  end

  # GET /housing_expenses/1;edit
  def edit
    @housing_expense = HousingExpense.find(params[:id])
  end

  # POST /housing_expenses
  # POST /housing_expenses.xml
  def create
    @housing_expense = HousingExpense.new(params[:housing_expense])

    respond_to do |format|
      if @housing_expense.save
        flash[:notice] = 'HousingExpense was successfully created.'
        format.html { redirect_to housing_expense_url(@housing_expense) }
        format.xml  { head :created, :location => housing_expense_url(@housing_expense) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @housing_expense.errors.to_xml }
      end
    end
  end

  # PUT /housing_expenses/1
  # PUT /housing_expenses/1.xml
  def update
    @housing_expense = HousingExpense.find(params[:id])

    respond_to do |format|
      if @housing_expense.update_attributes(params[:housing_expense])
        flash[:notice] = 'HousingExpense was successfully updated.'
        format.html { redirect_to housing_expense_url(@housing_expense) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @housing_expense.errors.to_xml }
      end
    end
  end

  # DELETE /housing_expenses/1
  # DELETE /housing_expenses/1.xml
  def destroy
    @housing_expense = HousingExpense.find(params[:id])
    @housing_expense.destroy

    respond_to do |format|
      format.html { redirect_to housing_expenses_url }
      format.xml  { head :ok }
    end
  end
end
