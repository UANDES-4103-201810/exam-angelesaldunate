require "application_system_test_case"

class DeliveryInfosTest < ApplicationSystemTestCase
  setup do
    @delivery_info = delivery_infos(:one)
  end

  test "visiting the index" do
    visit delivery_infos_url
    assert_selector "h1", text: "Delivery Infos"
  end

  test "creating a Delivery info" do
    visit delivery_infos_url
    click_on "New Delivery Info"

    fill_in "Address", with: @delivery_info.address
    fill_in "Adressinfo", with: @delivery_info.adressinfo
    fill_in "Phone", with: @delivery_info.phone
    click_on "Create Delivery info"

    assert_text "Delivery info was successfully created"
    click_on "Back"
  end

  test "updating a Delivery info" do
    visit delivery_infos_url
    click_on "Edit", match: :first

    fill_in "Address", with: @delivery_info.address
    fill_in "Adressinfo", with: @delivery_info.adressinfo
    fill_in "Phone", with: @delivery_info.phone
    click_on "Update Delivery info"

    assert_text "Delivery info was successfully updated"
    click_on "Back"
  end

  test "destroying a Delivery info" do
    visit delivery_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delivery info was successfully destroyed"
  end
end
