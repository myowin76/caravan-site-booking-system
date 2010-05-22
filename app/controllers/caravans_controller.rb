class CaravansController < ApplicationController
	
	before_filter :login_required
	layout 'admin'
	def index
		@customer_id = params[:customer_id]
		@caravans = Caravan.all
		
		if @customer_id
			@customers = Customer.find(@customer_id)
		end
		
	end
	
	def list
		@caravans = Caravan.all
		
	end
  

  
  def show
    @caravan = Caravan.find(params[:id])
	@owner = @caravan.owner.fullname
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
