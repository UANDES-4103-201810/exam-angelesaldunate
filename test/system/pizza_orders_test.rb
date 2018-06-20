require "application_system_test_case"

class PizzaOrdersTest < ApplicationSystemTestCase
  setup do
    @pizza_order = pizza_orders(:one)
  end

  test "visiting the index" do
    visit pizza_orders_url
    assert_selector "h1", text: "Pizza Orders"
  end

  test "creating a Pizza order" do
    visit pizza_orders_url
    click_on "New Pizza Order"

    fill_in "Order", with: @pizza_order.order_id
    fill_in "Pizza", with: @pizza_order.pizza_id
    click_on "Create Pizza order"

    assert_text "Pizza order was successfully created"
    click_on "Back"
  end

  test "updating a Pizza order" do
    visit pizza_orders_url
    click_on "Edit", match: :first

    fill_in "Order", with: @pizza_order.order_id
    fill_in "Pizza", with: @pizza_order.pizza_id
    click_on "Update Pizza order"

    assert_text "Pizza order was successfully updated"
    click_on "Back"
  end

  test "destroying a Pizza order" do
    visit pizza_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pizza order was successfully destroyed"
  end
end
