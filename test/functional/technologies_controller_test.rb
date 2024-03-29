require 'test_helper'

class TechnologiesControllerTest < ActionController::TestCase
  setup do
    @technology = technologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technology" do
    assert_difference('Technology.count') do
      post :create, technology: { description: @technology.description, name: @technology.name }
    end

    assert_redirected_to technology_path(assigns(:technology))
  end

  test "should show technology" do
    get :show, id: @technology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technology
    assert_response :success
  end

  test "should update technology" do
    put :update, id: @technology, technology: { description: @technology.description, name: @technology.name }
    assert_redirected_to technology_path(assigns(:technology))
  end

  test "should destroy technology" do
    assert_difference('Technology.count', -1) do
      delete :destroy, id: @technology
    end

    assert_redirected_to technologies_path
  end
  test "create a new technology" do
    post :create, :technology => {:name => "C#", :description => "Used in Dot Net."}
    technology = assigns(:technology)
    assert_not_nil technology
    assert technology.errors.count == 0
    assert_equal "Technology successfully created.", flash[:notice]
  end
end
