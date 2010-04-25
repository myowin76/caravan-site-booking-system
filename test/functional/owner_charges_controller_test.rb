require 'test_helper'

class OwnerChargesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => OwnerCharge.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    OwnerCharge.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    OwnerCharge.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to owner_charge_url(assigns(:owner_charge))
  end
  
  def test_edit
    get :edit, :id => OwnerCharge.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    OwnerCharge.any_instance.stubs(:valid?).returns(false)
    put :update, :id => OwnerCharge.first
    assert_template 'edit'
  end
  
  def test_update_valid
    OwnerCharge.any_instance.stubs(:valid?).returns(true)
    put :update, :id => OwnerCharge.first
    assert_redirected_to owner_charge_url(assigns(:owner_charge))
  end
  
  def test_destroy
    owner_charge = OwnerCharge.first
    delete :destroy, :id => owner_charge
    assert_redirected_to owner_charges_url
    assert !OwnerCharge.exists?(owner_charge.id)
  end
end
