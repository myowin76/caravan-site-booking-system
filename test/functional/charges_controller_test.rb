require 'test_helper'

class ChargesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Charge.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Charge.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Charge.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to charge_url(assigns(:charge))
  end
  
  def test_edit
    get :edit, :id => Charge.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Charge.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Charge.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Charge.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Charge.first
    assert_redirected_to charge_url(assigns(:charge))
  end
  
  def test_destroy
    charge = Charge.first
    delete :destroy, :id => charge
    assert_redirected_to charges_url
    assert !Charge.exists?(charge.id)
  end
end
