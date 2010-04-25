class CaravansController < ApplicationController
	def index
	
		@caravans = Caravan.all
		if params[:customer]
			@customers = Customer.new(params[:customer])
		end
	end
  

  
  def show
    @caravan = Caravan.find(params[:id])
  end
  
  def new
    @caravan = Caravan.new
  end
  
  def create
    @caravan = Caravan.new(params[:caravan])
    if @caravan.save
      flash[:notice] = "Successfully created caravan."
      redirect_to @caravan
    else
      render :action => 'new'
    end
  end
  
  def edit
    @caravan = Caravan.find(params[:id])
  end
  
  def update
    @caravan = Caravan.find(params[:id])
    if @caravan.update_attributes(params[:caravan])
      flash[:notice] = "Successfully updated caravan."
      redirect_to @caravan
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @caravan = Caravan.find(params[:id])
    @caravan.destroy
    flash[:notice] = "Successfully destroyed caravan."
    redirect_to caravans_url
  end
end
