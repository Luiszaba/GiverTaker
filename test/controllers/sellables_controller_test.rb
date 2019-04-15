require 'test_helper'

class SellablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sellable = sellables(:one)
  end

  test "should get index" do
    get sellables_url
    assert_response :success
  end

  test "should get new" do
    get new_sellable_url
    assert_response :success
  end

  test "should create sellable" do
    assert_difference('Sellable.count') do
      post sellables_url, params: { sellable: { address: @sellable.address, completed: @sellable.completed, description: @sellable.description, price: @sellable.price, title: @sellable.title } }
    end

    assert_redirected_to sellable_url(Sellable.last)
  end

  test "should show sellable" do
    get sellable_url(@sellable)
    assert_response :success
  end

  test "should get edit" do
    get edit_sellable_url(@sellable)
    assert_response :success
  end

  test "should update sellable" do
    patch sellable_url(@sellable), params: { sellable: { address: @sellable.address, completed: @sellable.completed, description: @sellable.description, price: @sellable.price, title: @sellable.title } }
    assert_redirected_to sellable_url(@sellable)
  end

  test "should destroy sellable" do
    assert_difference('Sellable.count', -1) do
      delete sellable_url(@sellable)
    end

    assert_redirected_to sellables_url
  end
end
