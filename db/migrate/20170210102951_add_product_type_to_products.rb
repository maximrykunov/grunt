class AddProductTypeToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :product_type, :string
    Product.update_all(product_type: :tepl)
  end
end
