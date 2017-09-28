require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: products(:one)
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: products(:one).attributes
    end
    assert_redirected_to root_path
  end

  test "should get update" do
    patch :update, id: products(:one), product: {name: 'MyString-xxx', price: 555, short_description: 'ALohaaaa'}
    #assert_redirected_to root_path
    assert_equal 'MyString-xxx', Product.find(products(:one).id).name
    assert_equal 'MyString-xxx', assigns(:product).name
  end

  test "should get delete" do
    assert_difference('Product.count') do
      delete :destroy, id: products(:one)
    end
    assert_redirected_to root_path
  end

end
