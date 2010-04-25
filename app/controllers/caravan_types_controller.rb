class CaravanTypesController < ApplicationController
  def index
    @caravan_types = CaravanType.all
  end
  
  def show
    @caravan_type = CaravanType.find(params[:id])
  end
  
  def new
    @caravan_type = CaravanType.new
  end
  
  def create
    @caravan_type = CaravanType.new(params[:caravan_type])
    if @caravan_type.save
      flash[:notice] = "Successfully created caravan type."
      redirect_to @caravan_type
    else
      render :action => 'new'
    end
  end
  
  def edit
    @caravan_type = CaravanType.find(params[:id])
  end
  
  def update
    @caravan_type = CaravanType.find(params[:id])
    if @caravan_type.update_attributes(params[:caravan_type])
      flash[:notice] = "Successfully updated caravan type."
      redirect_to @caravan_type
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @caravan_type = CaravanType.find(params[:id])
    @caravan_type.destroy
    flash[:notice] = "Successfully destroyed caravan type."
    redirect_to caravan_types_url
  end
end
