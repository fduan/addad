require "test_helper"

class ProductsControllerTest < ActionController::TestCase
  def product
    @product ||= products :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Product.count") do
      post :create, product: { base_price: product.base_price, currency: product.currency, description: product.description, name: product.name, rate_type: product.rate_type }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  def test_show
    get :show, id: product
    assert_response :success
  end

  def test_edit
    get :edit, id: product
    assert_response :success
  end

  def test_update
    put :update, id: product, product: { base_price: product.base_price, currency: product.currency, description: product.description, name: product.name, rate_type: product.rate_type }
    assert_redirected_to product_path(assigns(:product))
  end

  def test_destroy
    assert_difference("Product.count", -1) do
      delete :destroy, id: product
    end

    assert_redirected_to products_path
  end
end
