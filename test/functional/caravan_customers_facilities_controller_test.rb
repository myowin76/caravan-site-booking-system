require 'test_helper'

class CaravanCustomersFacilitiesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => CaravanCustomersFacility.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    CaravanCustomersFacility.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    CaravanCustomersFacility.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to caravan_customers_facility_url(assigns(:caravan_customers_facility))
  end
  
  def test_edit
    get :edit, :id => CaravanCustomersFacility.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    CaravanCustomersFacility.any_instance.stubs(:valid?).returns(false)
    put :update, :id => CaravanCustomersFacility.first
    assert_template 'edit'
  end
  
  def test_update_valid
    CaravanCustomersFacility.any_instance.stubs(:valid?).returns(true)
    put :update, :id => CaravanCustomersFacility.first
    assert_redirected_to caravan_customers_facility_url(assigns(:caravan_customers_facility))
  end
  
  def test_destroy
    caravan_customers_facility = CaravanCustomersFacility.first
    delete :destroy, :id => caravan_customers_facility
    assert_redirected_to caravan_customers_facilities_url
    assert !CaravanCustomersFacility.exists?(caravan_customers_facility.id)
  end
end
