class CaravanFacilitiesController < ApplicationController
  def index
    @caravan_facilities = CaravanFacility.all
  end
  
  def show
    @caravan_facility = CaravanFacility.find(params[:id])
  end
  
  def new
    @caravan_facility = CaravanFacility.new
  end
  
  def create
    @caravan_facility = CaravanFacility.new(params[:caravan_facility])
    if @caravan_facility.save
      flash[:notice] = "Successfully created caravan facility."
      redirect_to @caravan_facility
    else
      render :action => 'new'
    end
  end
  
  def edit
    @caravan_facility = CaravanFacility.find(params[:id])
  end
  
  def update
    @caravan_facility = CaravanFacility.find(params[:id])
    if @caravan_facility.update_attributes(params[:caravan_facility])
      flash[:notice] = "Successfully updated caravan facility."
      redirect_to @caravan_facility
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @caravan_facility = CaravanFacility.find(params[:id])
    @caravan_facility.destroy
    flash[:notice] = "Successfully destroyed caravan facility."
    redirect_to caravan_facilities_url
  end
end
