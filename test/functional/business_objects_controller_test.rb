require 'test_helper'

class BusinessObjectsControllerTest < ActionController::TestCase
  setup do
    @business_object = business_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_object" do
    assert_difference('BusinessObject.count') do
      post :create, :business_object => { :Category => @business_object.Category, :DeliveryDate => @business_object.DeliveryDate, :Description => @business_object.Description, :Notes => @business_object.Notes, :Owner => @business_object.Owner, :Price => @business_object.Price, :Title => @business_object.Title }
    end

    assert_redirected_to business_object_path(assigns(:business_object))
  end

  test "should show business_object" do
    get :show, :id => @business_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @business_object
    assert_response :success
  end

  test "should update business_object" do
    put :update, :id => @business_object, :business_object => { :Category => @business_object.Category, :DeliveryDate => @business_object.DeliveryDate, :Description => @business_object.Description, :Notes => @business_object.Notes, :Owner => @business_object.Owner, :Price => @business_object.Price, :Title => @business_object.Title }
    assert_redirected_to business_object_path(assigns(:business_object))
  end

  test "should destroy business_object" do
    assert_difference('BusinessObject.count', -1) do
      delete :destroy, :id => @business_object
    end

    assert_redirected_to business_objects_path
  end
end
