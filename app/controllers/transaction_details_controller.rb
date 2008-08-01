class TransactionDetailsController < ApplicationController

  layout "urla"
  
  # GET /transaction_details
  # GET /transaction_details.xml
  def index
    @transaction_details = TransactionDetail.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @transaction_details.to_xml }
    end
  end

  # GET /transaction_details/1
  # GET /transaction_details/1.xml
  def show
    @transaction_detail = TransactionDetail.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @transaction_detail.to_xml }
    end
  end

  # GET /transaction_details/new
  def new
    @transaction_detail = TransactionDetail.new
  end

  # GET /transaction_details/1;edit
  def edit
    @transaction_detail = TransactionDetail.find(params[:id])
  end

  # POST /transaction_details
  # POST /transaction_details.xml
  def create
    @transaction_detail = TransactionDetail.new(params[:transaction_detail])

    respond_to do |format|
      if @transaction_detail.save
        flash[:notice] = 'TransactionDetail was successfully created.'
        format.html { redirect_to transaction_detail_url(@transaction_detail) }
        format.xml  { head :created, :location => transaction_detail_url(@transaction_detail) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @transaction_detail.errors.to_xml }
      end
    end
  end

  # PUT /transaction_details/1
  # PUT /transaction_details/1.xml
  def update
    @transaction_detail = TransactionDetail.find(params[:id])

    respond_to do |format|
      if @transaction_detail.update_attributes(params[:transaction_detail])
        flash[:notice] = 'TransactionDetail was successfully updated.'
        format.html { redirect_to transaction_detail_url(@transaction_detail) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @transaction_detail.errors.to_xml }
      end
    end
  end

  # DELETE /transaction_details/1
  # DELETE /transaction_details/1.xml
  def destroy
    @transaction_detail = TransactionDetail.find(params[:id])
    @transaction_detail.destroy

    respond_to do |format|
      format.html { redirect_to transaction_details_url }
      format.xml  { head :ok }
    end
  end
end
