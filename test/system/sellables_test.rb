require "application_system_test_case"

class SellablesTest < ApplicationSystemTestCase
  setup do
    @sellable = sellables(:one)
  end

  test "visiting the index" do
    visit sellables_url
    assert_selector "h1", text: "Sellables"
  end

  test "creating a Sellable" do
    visit sellables_url
    click_on "New Sellable"

    fill_in "Address", with: @sellable.address
    check "Completed" if @sellable.completed
    fill_in "Description", with: @sellable.description
    fill_in "Price", with: @sellable.price
    fill_in "Title", with: @sellable.title
    click_on "Create Sellable"

    assert_text "Sellable was successfully created"
    click_on "Back"
  end

  test "updating a Sellable" do
    visit sellables_url
    click_on "Edit", match: :first

    fill_in "Address", with: @sellable.address
    check "Completed" if @sellable.completed
    fill_in "Description", with: @sellable.description
    fill_in "Price", with: @sellable.price
    fill_in "Title", with: @sellable.title
    click_on "Update Sellable"

    assert_text "Sellable was successfully updated"
    click_on "Back"
  end

  test "destroying a Sellable" do
    visit sellables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sellable was successfully destroyed"
  end
end
