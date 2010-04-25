require 'test_helper'

class CaravansControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Caravan.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Caravan.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Caravan.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to caravan_url(assigns(:caravan))
  end
  
  def test_edit
    get :edit, :id => Caravan.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Caravan.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Caravan.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Caravan.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Caravan.first
    assert_redirected_to caravan_url(assigns(:caravan))
  end
  
  def test_destroy
    caravan = Caravan.first
    delete :destroy, :id => caravan
    assert_redirected_to caravans_url
    assert !Caravan.exists?(caravan.id)
  end
end
