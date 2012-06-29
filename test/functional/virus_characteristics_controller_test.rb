require 'test_helper'

class VirusCharacteristicsControllerTest < ActionController::TestCase
  setup do
    @virus_characteristic = virus_characteristics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:virus_characteristics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create virus_characteristic" do
    assert_difference('VirusCharacteristic.count') do
      post :create, virus_characteristic: { characteristic_id: @virus_characteristic.characteristic_id, value: @virus_characteristic.value, virus_id: @virus_characteristic.virus_id }
    end

    assert_redirected_to virus_characteristic_path(assigns(:virus_characteristic))
  end

  test "should show virus_characteristic" do
    get :show, id: @virus_characteristic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @virus_characteristic
    assert_response :success
  end

  test "should update virus_characteristic" do
    put :update, id: @virus_characteristic, virus_characteristic: { characteristic_id: @virus_characteristic.characteristic_id, value: @virus_characteristic.value, virus_id: @virus_characteristic.virus_id }
    assert_redirected_to virus_characteristic_path(assigns(:virus_characteristic))
  end

  test "should destroy virus_characteristic" do
    assert_difference('VirusCharacteristic.count', -1) do
      delete :destroy, id: @virus_characteristic
    end

    assert_redirected_to virus_characteristics_path
  end
end
