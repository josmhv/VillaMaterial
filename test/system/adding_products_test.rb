require "application_system_test_case"

class AddingProductsTest < ApplicationSystemTestCase
  setup do
    @adding_product = adding_products(:one)
  end

  test "visiting the index" do
    visit adding_products_url
    assert_selector "h1", text: "Adding products"
  end

  test "should create adding product" do
    visit adding_products_url
    click_on "New adding product"

    fill_in "Description", with: @adding_product.description
    fill_in "Image", with: @adding_product.image
    fill_in "Name", with: @adding_product.name
    click_on "Create Adding product"

    assert_text "Adding product was successfully created"
    click_on "Back"
  end

  test "should update Adding product" do
    visit adding_product_url(@adding_product)
    click_on "Edit this adding product", match: :first

    fill_in "Description", with: @adding_product.description
    fill_in "Image", with: @adding_product.image
    fill_in "Name", with: @adding_product.name
    click_on "Update Adding product"

    assert_text "Adding product was successfully updated"
    click_on "Back"
  end

  test "should destroy Adding product" do
    visit adding_product_url(@adding_product)
    click_on "Destroy this adding product", match: :first

    assert_text "Adding product was successfully destroyed"
  end
end
