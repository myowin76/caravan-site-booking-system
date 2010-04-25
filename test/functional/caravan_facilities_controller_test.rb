require 'test_helper'

class CaravanFacilitiesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => CaravanFacility.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    CaravanFacility.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    CaravanFacility.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to caravan_facility_url(assigns(:caravan_facility))
  end
  
  def test_edit
    get :edit, :id => CaravanFacility.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    CaravanFacility.any_instance.stubs(:valid?).returns(false)
    put :update, :id => CaravanFacility.first
    assert_template 'edit'
  end
  
  def test_update_valid
    CaravanFacility.any_instance.stubs(:valid?).returns(true)
    put :update, :id => CaravanFacility.first
    assert_redirected_to caravan_facility_url(assigns(:caravan_facility))
  end
  
  def test_destroy
    caravan_facility = CaravanFacility.first
    delete :destroy, :id => caravan_facility
    assert_redirected_to caravan_facilities_url
    assert !CaravanFacility.exists?(caravan_facility.id)
  end
end
