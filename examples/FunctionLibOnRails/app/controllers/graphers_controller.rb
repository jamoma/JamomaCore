class GraphersController < ApplicationController
  # GET /graphers
  # GET /graphers.xml
  def index
    #@graphers = Grapher.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @graphers }
    end
  end

  # GET /graphers/1
  # GET /graphers/1.xml
  def show
    @grapher = Grapher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @grapher }
    end
  end

  # GET /graphers/new
  # GET /graphers/new.xml
  def new
    @grapher = Grapher.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @grapher }
    end
  end

  # GET /graphers/1/edit
  def edit
    @grapher = Grapher.find(params[:id])
  end

  # POST /graphers
  # POST /graphers.xml
  def create
    @grapher = Grapher.new(params[:grapher])

    respond_to do |format|
      if @grapher.save
        format.html { redirect_to(@grapher, :notice => 'Grapher was successfully created.') }
        format.xml  { render :xml => @grapher, :status => :created, :location => @grapher }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @grapher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /graphers/1
  # PUT /graphers/1.xml
  def update
    @grapher = Grapher.find(params[:id])

    respond_to do |format|
      if @grapher.update_attributes(params[:grapher])
        format.html { redirect_to(@grapher, :notice => 'Grapher was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @grapher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /graphers/1
  # DELETE /graphers/1.xml
  def destroy
    @grapher = Grapher.find(params[:id])
    @grapher.destroy

    respond_to do |format|
      format.html { redirect_to(graphers_url) }
      format.xml  { head :ok }
    end
  end
end
