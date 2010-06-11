class DogparksController < ApplicationController
  # GET /dogparks
  # GET /dogparks.xml
  def index
    @dogparks = Dogpark.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dogparks }
    end
  end

  # GET /dogparks/1
  # GET /dogparks/1.xml
  def show
    @dogpark = Dogpark.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dogpark }
    end
  end

  # GET /dogparks/new
  # GET /dogparks/new.xml
  def new
    @dogpark = Dogpark.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dogpark }
    end
  end

  # GET /dogparks/1/edit
  def edit
    @dogpark = Dogpark.find(params[:id])
  end

  # POST /dogparks
  # POST /dogparks.xml
  def create
    @dogpark = Dogpark.new(params[:dogpark])

    respond_to do |format|
      if @dogpark.save
        format.html { redirect_to(@dogpark, :notice => 'Dogpark was successfully created.') }
        format.xml  { render :xml => @dogpark, :status => :created, :location => @dogpark }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dogpark.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dogparks/1
  # PUT /dogparks/1.xml
  def update
    @dogpark = Dogpark.find(params[:id])

    respond_to do |format|
      if @dogpark.update_attributes(params[:dogpark])
        format.html { redirect_to(@dogpark, :notice => 'Dogpark was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dogpark.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dogparks/1
  # DELETE /dogparks/1.xml
  def destroy
    @dogpark = Dogpark.find(params[:id])
    @dogpark.destroy

    respond_to do |format|
      format.html { redirect_to(dogparks_url) }
      format.xml  { head :ok }
    end
  end
end
