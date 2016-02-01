json.array!(@products) do |product|
  json.extract! product, :id, :category, :unity, :description, :identification, :cost, :selling_price_1, :observations, :provider, :inventory, :barcode, :selling_price_2, :selling_price_3, :min_stock, :max_stock, :stock_purchase, :factor_pcs_of_sales, :ncm, :brand, :weight, :size, :inactive, :kind, :composition, :feedstock, :material_imprint, :for_sale, :coin, :code, :comments, :provider, :ncm_code, :pip, :gender, :value, :quantity
  json.url product_url(product, format: :json)
end
