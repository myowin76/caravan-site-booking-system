require 'test_helper'

class CaravanCustomersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => CaravanCustomer.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    CaravanCustomer.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    CaravanCustomer.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to caravan_customer_url(assigns(:caravan_customer))
  end
  
  def test_edit
    get :edit, :id => CaravanCustomer.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    CaravanCustomer.any_instance.stubs(:valid?).returns(false)
    put :update, :id => CaravanCustomer.first
    assert_template 'edit'
  end
  
  def test_update_valid
    CaravanCustomer.any_instance.stubs(:valid?).returns(true)
    put :update, :id => CaravanCustomer.first
    assert_redirected_to caravan_customer_url(assigns(:caravan_customer))
  end
  
  def test_destroy
    caravan_customer = CaravanCustomer.first
    delete :destroy, :id => caravan_customer
    assert_redirected_to caravan_customers_url
    assert !CaravanCustomer.exists?(caravan_customer.id)
  end
end
