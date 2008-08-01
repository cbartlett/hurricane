class IncomesController < ApplicationController
  layout "urla"
  
  # GET /incomes
  # GET /incomes.xml
  def index
    @incomes = Income.find(:all)

     respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @incomes.to_xml }
    end
  end

  # GET /incomes/1
  # GET /incomes/1.xml
  def show
    @income = Income.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @income.to_xml }
    end
  end

  # GET /incomes/new
  def new
    @income = Income.new
    
    respond_to do |format|
      format.html # new.rhtml
      format.js   # new.rjs  << added for P/C >>
      format.xml  { render :xml => @income.to_xml }
    end

  end

  # GET /incomes/1;edit
  def edit
    @income = Income.find(params[:id])
  end

  # POST /incomes
  # POST /incomes.xml
  def create
    @income = Income.new(params[:income])

    respond_to do |format|
      if @income.save
        flash[:notice] = 'Income was successfully created.'
        format.html { redirect_to income_url(@income) } 
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { head :created, :location => income_url(@income) }
      else
        format.html { render :action => "new" }
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { render :xml => @income.errors.to_xml }
      end
    end
  end

  # PUT /incomes/1
  # PUT /incomes/1.xml
  def update
    @income = Income.find(params[:id])

    respond_to do |format|
      if @income.update_attributes(params[:income])
        flash[:notice] = 'Income was successfully updated.'
        
        format.js   # render update.rjs  << added for P/C >>
        format.html { redirect_to income_url(@income)}
        format.xml  { head :ok }
      else
        format.js   # render update.rjs  << added for P/C >>
        format.html { render :action => "edit" }
        format.xml  { render :xml => @income.errors.to_xml }
      end
    end
  end

  # DELETE /incomes/1
  # DELETE /incomes/1.xml
  def destroy
    @income = Income.find(params[:id])
    @income.destroy

    respond_to do |format|
      format.js   # render destroy.rjs  << added for P/C >>
      format.html { redirect_to incomes_url }
      format.xml  { head :ok }
    end
  end
end
