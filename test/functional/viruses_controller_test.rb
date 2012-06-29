require 'test_helper'

class VirusesControllerTest < ActionController::TestCase
  setup do
    @virus = viruses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:viruses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create virus" do
    assert_difference('Virus.count') do
      post :create, virus: { name: @virus.name }
    end

    assert_redirected_to virus_path(assigns(:virus))
  end

  test "should show virus" do
    get :show, id: @virus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @virus
    assert_response :success
  end

  test "should update virus" do
    put :update, id: @virus, virus: { name: @virus.name }
    assert_redirected_to virus_path(assigns(:virus))
  end

  test "should destroy virus" do
    assert_difference('Virus.count', -1) do
      delete :destroy, id: @virus
    end

    assert_redirected_to viruses_path
  end
end
