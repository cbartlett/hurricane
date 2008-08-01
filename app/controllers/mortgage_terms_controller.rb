class MortgageTermsController < ApplicationController
  
  layout "urla"
  
  # GET /mortgage_terms
  # GET /mortgage_terms.xml
  def index
    @mortgage_terms = MortgageTerm.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @mortgage_terms.to_xml }
    end
  end

  # GET /mortgage_terms/1
  # GET /mortgage_terms/1.xml
  def show
    @mortgage_term = MortgageTerm.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @mortgage_term.to_xml }
    end
  end

  # GET /mortgage_terms/new
  def new
    @mortgage_term = MortgageTerm.new
  end

  # GET /mortgage_terms/1;edit
  def edit
    @mortgage_term = MortgageTerm.find(params[:id])
  end

  # POST /mortgage_terms
  # POST /mortgage_terms.xml
  def create
    @mortgage_term = MortgageTerm.new(params[:mortgage_term])

    respond_to do |format|
      if @mortgage_term.save
        flash[:notice] = 'MortgageTerm was successfully created.'
        format.html { redirect_to mortgage_term_url(@mortgage_term) }
        format.xml  { head :created, :location => mortgage_term_url(@mortgage_term) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mortgage_term.errors.to_xml }
      end
    end
  end

  # PUT /mortgage_terms/1
  # PUT /mortgage_terms/1.xml
  def update
    @mortgage_term = MortgageTerm.find(params[:id])

    respond_to do |format|
      if @mortgage_term.update_attributes(params[:mortgage_term])
        flash[:notice] = 'MortgageTerm was successfully updated.'
        format.html { redirect_to mortgage_term_url(@mortgage_term) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mortgage_term.errors.to_xml }
      end
    end
  end

  # DELETE /mortgage_terms/1
  # DELETE /mortgage_terms/1.xml
  def destroy
    @mortgage_term = MortgageTerm.find(params[:id])
    @mortgage_term.destroy

    respond_to do |format|
      format.html { redirect_to mortgage_terms_url }
      format.xml  { head :ok }
    end
  end
end
