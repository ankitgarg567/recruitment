require 'test_helper'

class RoundsControllerTest < ActionController::TestCase
  setup do
    @round = rounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create round" do
    assert_difference('Round.count') do
      post :create, round: { description: @round.description, name: @round.name }
    end

    assert_redirected_to round_path(assigns(:round))
  end

  test "should show round" do
    get :show, id: @round
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @round
    assert_response :success
  end

  test "should update round" do
    put :update, id: @round, round: { description: @round.description, name: @round.name }
    assert_redirected_to round_path(assigns(:round))
  end

  test "should destroy round" do
    assert_difference('Round.count', -1) do
      delete :destroy, id: @round
    end

    assert_redirected_to rounds_path
  end
  test "create a new round" do
    post :create, :round => {:name => "GD", :description => "It helps in finding the exposure of the candidate."}
    round = assigns(:round)
    assert_not_nil round
    assert round.errors.count == 0
    assert_equal "Round successfully created.", flash[:notice]
  end
end
