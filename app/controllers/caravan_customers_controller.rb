class CaravanCustomersController < ApplicationController
#skip_before_filter :user_login_required, :only => [:index, :new]
	before_filter :login_required
	layout 'admin'

  def index
	@customer = Customer.find(params[:customer_id])
	@caravan = Caravan.find(params[:caravan_id])
    @caravan_customers = @caravan.caravan_customers.all
	
	
  end
  
  
  
  
  
  def show
	@caravan = Caravan.find(params[:caravan_id])
    @caravan_customers = @caravan.caravan_customers.find(params[:id])
    
  end
  
  def new
	@customer = Customer.find(params[:customer_id])
	@caravan = Caravan.find(params[:caravan_id])
	@facilities = Facility.all
    @caravan_customer = @caravan.caravan_customers.new
	
  end
  
  def create
	@caravan = Caravan.find(params[:caravan_id])
	#@caravan_customer.customer = params[:customer][:id]
    @caravan_customer = @caravan.caravan_customers.build(params[:caravan_customer])
	#@caravan_customer.customer_id = @customer_id
	#checked_c_facilities = get_c_facilities_from(params[:caravan_facilities_list])
	#removed_c_facilities = @facilities - checked_c_facilities
	
	
	
    if @caravan_customer.save
	
		#checked_c_facilities.each {|c_f|@caravan_customer.caravan_facilities<< c_f if !@caravan_customer.caravan_facilities.include?(c_f)}
		#removed_c_facilities.each {|c_f|@caravan_customer.caravan_facilities.delete(c_f) if @caravan_customer.caravan_facilities.include?(c_f)}
	
      flash[:notice] = "Successfully created caravan customer."
      redirect_to caravans_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @caravan_customer = @caravan.caravan_customers.find(params[:id])
  end
  
  def update
    @caravan_customer = CaravanCustomer.find(params[:id])
    if @caravan_customer.update_attributes(params[:caravan_customer])
      flash[:notice] = "Successfully updated caravan customer."
      redirect_to @caravan_customer
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @caravan_customer = CaravanCustomer.find(params[:id])
    @caravan_customer.destroy
    flash[:notice] = "Successfully destroyed caravan customer."
    redirect_to caravan_customers_url
  end
  
    private
	def get_c_facilities_from(facil_list)
		facil_list = [] if facil_list.blank?
		return facil_list.collect{|fid| Facility.find_by_id(fid.to_i)}.compact
	end
end
