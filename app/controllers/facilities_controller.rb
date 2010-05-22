class FacilitiesController < ApplicationController

  before_filter :login_required
  layout 'admin'
  
  def index
    @facilities = Facility.all
  end
  
  def show
    @facility = Facility.find(params[:id])
  end
  
  def new
    @facility = Facility.new
  end
  
  def create
    @facility = Facility.new(params[:facility])
    if @facility.save
      flash[:notice] = "Successfully created facility."
      redirect_to @facility
    else
      render :action => 'new'
    end
  end
  
  def edit
    @facility = Facility.find(params[:id])
  end
  
  def update
    @facility = Facility.find(params[:id])
    if @facility.update_attributes(params[:facility])
      flash[:notice] = "Successfully updated facility."
      redirect_to @facility
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @facility = Facility.find(params[:id])
    @facility.destroy
    flash[:notice] = "Successfully destroyed facility."
    redirect_to facilities_url
  end
end
