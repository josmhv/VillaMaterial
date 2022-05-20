require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get products" do
    get products_products_url
    assert_response :success
  end
end
