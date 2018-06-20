require 'test_helper'

class PizzaOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizza_order = pizza_orders(:one)
  end

  test "should get index" do
    get pizza_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_pizza_order_url
    assert_response :success
  end

  test "should create pizza_order" do
    assert_difference('PizzaOrder.count') do
      post pizza_orders_url, params: { pizza_order: { order_id: @pizza_order.order_id, pizza_id: @pizza_order.pizza_id } }
    end

    assert_redirected_to pizza_order_url(PizzaOrder.last)
  end

  test "should show pizza_order" do
    get pizza_order_url(@pizza_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_pizza_order_url(@pizza_order)
    assert_response :success
  end

  test "should update pizza_order" do
    patch pizza_order_url(@pizza_order), params: { pizza_order: { order_id: @pizza_order.order_id, pizza_id: @pizza_order.pizza_id } }
    assert_redirected_to pizza_order_url(@pizza_order)
  end

  test "should destroy pizza_order" do
    assert_difference('PizzaOrder.count', -1) do
      delete pizza_order_url(@pizza_order)
    end

    assert_redirected_to pizza_orders_url
  end
end
