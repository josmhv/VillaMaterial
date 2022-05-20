require "test_helper"

class AddingProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adding_product = adding_products(:one)
  end

  test "should get index" do
    get adding_products_url
    assert_response :success
  end

  test "should get new" do
    get new_adding_product_url
    assert_response :success
  end

  test "should create adding_product" do
    assert_difference("AddingProduct.count") do
      post adding_products_url, params: { adding_product: { description: @adding_product.description, image: @adding_product.image, name: @adding_product.name } }
    end

    assert_redirected_to adding_product_url(AddingProduct.last)
  end

  test "should show adding_product" do
    get adding_product_url(@adding_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_adding_product_url(@adding_product)
    assert_response :success
  end

  test "should update adding_product" do
    patch adding_product_url(@adding_product), params: { adding_product: { description: @adding_product.description, image: @adding_product.image, name: @adding_product.name } }
    assert_redirected_to adding_product_url(@adding_product)
  end

  test "should destroy adding_product" do
    assert_difference("AddingProduct.count", -1) do
      delete adding_product_url(@adding_product)
    end

    assert_redirected_to adding_products_url
  end
end
