class ChargesController < ApplicationController
  before_filter :login_required
  layout 'admin'
  def index
    @charges = Charge.all
  end
  
  def show
    @charge = Charge.find(params[:id])
  end
  
  def new
    @charge = Charge.new
  end
  
  def create
    @charge = Charge.new(params[:charge])
    if @charge.save
      flash[:notice] = "Successfully created charge."
      redirect_to @charge
    else
      render :action => 'new'
    end
  end
  
  def edit
    @charge = Charge.find(params[:id])
  end
  
  def update
    @charge = Charge.find(params[:id])
    if @charge.update_attributes(params[:charge])
      flash[:notice] = "Successfully updated charge."
      redirect_to @charge
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @charge = Charge.find(params[:id])
    @charge.destroy
    flash[:notice] = "Successfully destroyed charge."
    redirect_to charges_url
  end
end
