class GovernmentMonitoringsController < ApplicationController
  layout "urla.rhtml"
  
  # GET /government_monitorings
  # GET /government_monitorings.xml
  
  def index
    @government_monitorings = GovernmentMonitoring.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @government_monitorings.to_xml }
    end
  end

  # GET /government_monitorings/1
  # GET /government_monitorings/1.xml
  def show
    @government_monitoring = GovernmentMonitoring.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @government_monitoring.to_xml }
    end
  end

  # GET /government_monitorings/new
  def new
    @government_monitoring = GovernmentMonitoring.new
  end

  # GET /government_monitorings/1;edit
  def edit
    @government_monitoring = GovernmentMonitoring.find(params[:id])
  end

  # POST /government_monitorings
  # POST /government_monitorings.xml
  def create
    @government_monitoring = GovernmentMonitoring.new(params[:government_monitoring])

    respond_to do |format|
      if @government_monitoring.save
        flash[:notice] = 'GovernmentMonitoring was successfully created.'
        format.html { redirect_to government_monitoring_url(@government_monitoring) }
        format.xml  { head :created, :location => government_monitoring_url(@government_monitoring) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @government_monitoring.errors.to_xml }
      end
    end
  end

  # PUT /government_monitorings/1
  # PUT /government_monitorings/1.xml
  def update
    @government_monitoring = GovernmentMonitoring.find(params[:id])

    respond_to do |format|
      if @government_monitoring.update_attributes(params[:government_monitoring])
        flash[:notice] = 'GovernmentMonitoring was successfully updated.'
        format.html { redirect_to government_monitoring_url(@government_monitoring) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @government_monitoring.errors.to_xml }
      end
    end
  end

  # DELETE /government_monitorings/1
  # DELETE /government_monitorings/1.xml
  def destroy
    @government_monitoring = GovernmentMonitoring.find(params[:id])
    @government_monitoring.destroy

    respond_to do |format|
      format.html { redirect_to government_monitorings_url }
      format.xml  { head :ok }
    end
  end
end
