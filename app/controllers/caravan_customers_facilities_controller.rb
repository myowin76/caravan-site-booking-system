class CaravanCustomersFacilitiesController < ApplicationController
  def index
    @caravan_customers_facilities = CaravanCustomersFacility.all
  end
  
  def show
    @caravan_customers_facility = CaravanCustomersFacility.find(params[:id])
  end
  
  def new
    @caravan_customers_facility = CaravanCustomersFacility.new
  end
  
  def create
    @caravan_customers_facility = CaravanCustomersFacility.new(params[:caravan_customers_facility])
    if @caravan_customers_facility.save
      flash[:notice] = "Successfully created caravan customers facility."
      redirect_to @caravan_customers_facility
    else
      render :action => 'new'
    end
  end
  
  def edit
    @caravan_customers_facility = CaravanCustomersFacility.find(params[:id])
  end
  
  def update
    @caravan_customers_facility = CaravanCustomersFacility.find(params[:id])
    if @caravan_customers_facility.update_attributes(params[:caravan_customers_facility])
      flash[:notice] = "Successfully updated caravan customers facility."
      redirect_to @caravan_customers_facility
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @caravan_customers_facility = CaravanCustomersFacility.find(params[:id])
    @caravan_customers_facility.destroy
    flash[:notice] = "Successfully destroyed caravan customers facility."
    redirect_to caravan_customers_facilities_url
  end
end
