require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { barcode: @product.barcode, brand: @product.brand, category: @product.category, code: @product.code, coin: @product.coin, comments: @product.comments, composition: @product.composition, cost: @product.cost, description: @product.description, factor_pcs_of_sales: @product.factor_pcs_of_sales, feedstock: @product.feedstock, for_sale: @product.for_sale, gender: @product.gender, identification: @product.identification, inactive: @product.inactive, inventory: @product.inventory, kind: @product.kind, material_imprint: @product.material_imprint, max_stock: @product.max_stock, min_stock: @product.min_stock, ncm: @product.ncm, ncm_code: @product.ncm_code, observations: @product.observations, pip: @product.pip, provider: @product.provider, provider: @product.provider, quantity: @product.quantity, selling_price_1: @product.selling_price_1, selling_price_2: @product.selling_price_2, selling_price_3: @product.selling_price_3, size: @product.size, stock_purchase: @product.stock_purchase, unity: @product.unity, value: @product.value, weight: @product.weight }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { barcode: @product.barcode, brand: @product.brand, category: @product.category, code: @product.code, coin: @product.coin, comments: @product.comments, composition: @product.composition, cost: @product.cost, description: @product.description, factor_pcs_of_sales: @product.factor_pcs_of_sales, feedstock: @product.feedstock, for_sale: @product.for_sale, gender: @product.gender, identification: @product.identification, inactive: @product.inactive, inventory: @product.inventory, kind: @product.kind, material_imprint: @product.material_imprint, max_stock: @product.max_stock, min_stock: @product.min_stock, ncm: @product.ncm, ncm_code: @product.ncm_code, observations: @product.observations, pip: @product.pip, provider: @product.provider, provider: @product.provider, quantity: @product.quantity, selling_price_1: @product.selling_price_1, selling_price_2: @product.selling_price_2, selling_price_3: @product.selling_price_3, size: @product.size, stock_purchase: @product.stock_purchase, unity: @product.unity, value: @product.value, weight: @product.weight }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
