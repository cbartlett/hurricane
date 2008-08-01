class DeclarationsController < ApplicationController
  # GET /declarations
  # GET /declarations.xml
  
  layout "urla.rhtml"
  
  def index
    @declarations = Declaration.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @declarations.to_xml }
    end
  end

  # GET /declarations/1
  # GET /declarations/1.xml
  def show
    @declaration = Declaration.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @declaration.to_xml }
    end
  end

  # GET /declarations/new
  def new
    @declaration = Declaration.new
  end

  # GET /declarations/1;edit
  def edit
    @declaration = Declaration.find(params[:id])
  end

  # POST /declarations
  # POST /declarations.xml
  def create
    @declaration = Declaration.new(params[:declaration])

    respond_to do |format|
      if @declaration.save
        flash[:notice] = 'Declaration was successfully created.'
        format.html { redirect_to declaration_url(@declaration) }
        format.xml  { head :created, :location => declaration_url(@declaration) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @declaration.errors.to_xml }
      end
    end
  end

  # PUT /declarations/1
  # PUT /declarations/1.xml
  def update
    @declaration = Declaration.find(params[:id])

    respond_to do |format|
      if @declaration.update_attributes(params[:declaration])
        flash[:notice] = 'Declaration was successfully updated.'
        format.html { redirect_to declaration_url(@declaration) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @declaration.errors.to_xml }
      end
    end
  end

  # DELETE /declarations/1
  # DELETE /declarations/1.xml
  def destroy
    @declaration = Declaration.find(params[:id])
    @declaration.destroy

    respond_to do |format|
      format.html { redirect_to declarations_url }
      format.xml  { head :ok }
    end
  end
end
