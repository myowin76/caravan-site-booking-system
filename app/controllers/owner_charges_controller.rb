class OwnerChargesController < ApplicationController
  def index
    @owner_charges = OwnerCharge.all
  end
  
  def show
    @owner_charge = OwnerCharge.find(params[:id])
  end
  
  def new
    @owner_charge = OwnerCharge.new
  end
  
  def create
    @owner_charge = OwnerCharge.new(params[:owner_charge])
    if @owner_charge.save
      flash[:notice] = "Successfully created owner charge."
      redirect_to @owner_charge
    else
      render :action => 'new'
    end
  end
  
  def edit
    @owner_charge = OwnerCharge.find(params[:id])
  end
  
  def update
    @owner_charge = OwnerCharge.find(params[:id])
    if @owner_charge.update_attributes(params[:owner_charge])
      flash[:notice] = "Successfully updated owner charge."
      redirect_to @owner_charge
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @owner_charge = OwnerCharge.find(params[:id])
    @owner_charge.destroy
    flash[:notice] = "Successfully destroyed owner charge."
    redirect_to owner_charges_url
  end
end
