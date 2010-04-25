require 'test_helper'

class CaravanTypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => CaravanType.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    CaravanType.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    CaravanType.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to caravan_type_url(assigns(:caravan_type))
  end
  
  def test_edit
    get :edit, :id => CaravanType.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    CaravanType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => CaravanType.first
    assert_template 'edit'
  end
  
  def test_update_valid
    CaravanType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => CaravanType.first
    assert_redirected_to caravan_type_url(assigns(:caravan_type))
  end
  
  def test_destroy
    caravan_type = CaravanType.first
    delete :destroy, :id => caravan_type
    assert_redirected_to caravan_types_url
    assert !CaravanType.exists?(caravan_type.id)
  end
end
