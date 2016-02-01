class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      # fields for csv (blueBill)
      t.string :category
      t.string :unity
      t.string :description
      t.string :identification
      t.string :cost
      t.string :selling_price_1
      t.string :observations
      t.string :provider
      t.string :inventory
      t.string :barcode
      t.string :selling_price_2
      t.string :selling_price_3
      t.float :min_stock
      t.float :max_stock
      t.float :stock_purchase
      t.float :factor_pcs_of_sales
      t.string :ncm
      t.string :brand
      t.float :weight
      t.string :size
      t.boolean :inactive
      t.string :kind
      t.string :composition
      t.string :feedstock
      t.float :material_imprint
      t.boolean :for_sale
      t.string :coin

      # fields for txt (youDoInvoice)
      t.string :code
      t.string :comments
      t.string :provider
      t.float :ncm_code
      t.float :pip
      t.string :gender
      t.string :value
      t.string :quantity

      t.timestamps null: false
    end
  end
end
