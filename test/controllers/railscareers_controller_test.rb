require 'test_helper'

class RailscareersControllerTest < ActionController::TestCase
  setup do
    @railscareer = railscareers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railscareers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railscareer" do
    assert_difference('Railscareer.count') do
      post :create, railscareer: { content: @railscareer.content, name: @railscareer.name }
    end

    assert_redirected_to railscareer_path(assigns(:railscareer))
  end

  test "should show railscareer" do
    get :show, id: @railscareer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railscareer
    assert_response :success
  end

  test "should update railscareer" do
    patch :update, id: @railscareer, railscareer: { content: @railscareer.content, name: @railscareer.name }
    assert_redirected_to railscareer_path(assigns(:railscareer))
  end

  test "should destroy railscareer" do
    assert_difference('Railscareer.count', -1) do
      delete :destroy, id: @railscareer
    end

    assert_redirected_to railscareers_path
  end
end
