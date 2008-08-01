class EmployersController < ApplicationController
  
  layout "urla"
  
  # GET /employers
  # GET /employers.xml
  def index
    @employers = Employer.find(:all)

     respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @employers.to_xml }
    end
  end

  # GET /employers/1
  # GET /employers/1.xml
  def show
    @employer = Employer.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @employer.to_xml }
    end
  end

  # GET /employers/new
  def new
    @employer = Employer.new
    
    respond_to do |format|
      format.html # new.rhtml
      format.js   # new.rjs  << added for P/C >>
      format.xml  { render :xml => @employer.to_xml }
    end

  end

  # GET /employers/1;edit
  def edit
    @employer = Employer.find(params[:id])
  end

  # POST /employers
  # POST /employers.xml
  def create
    @employer = Employer.new(params[:employer])

    respond_to do |format|
      if @employer.save
        flash[:notice] = 'Employer was successfully created.'
        format.html { redirect_to employer_url(@employer) } 
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { head :created, :location => employer_url(@employer) }
      else
        format.html { render :action => "new" }
        format.js   # render create.rjs  << added for P/C >>
        format.xml  { render :xml => @employer.errors.to_xml }
      end
    end
  end

  # PUT /employers/1
  # PUT /employers/1.xml
  def update
    @employer = Employer.find(params[:id])

    respond_to do |format|
      if @employer.update_attributes(params[:employer])
        flash[:notice] = 'Employer was successfully updated.'
        
        format.js   # render update.rjs  << added for P/C >>
        format.html { redirect_to employer_url(@employer)}
        format.xml  { head :ok }
      else
        format.js   # render update.rjs  << added for P/C >>
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employer.errors.to_xml }
      end
    end
  end

  # DELETE /employers/1
  # DELETE /employers/1.xml
  def destroy
    @employer = Employer.find(params[:id])
    @employer.destroy

    respond_to do |format|
      format.js   # render destroy.rjs  << added for P/C >>
      format.html { redirect_to employers_url }
      format.xml  { head :ok }
    end
  end
end
