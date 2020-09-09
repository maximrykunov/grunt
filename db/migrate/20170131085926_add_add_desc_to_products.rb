class AddAddDescToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :add_desc, :text
    add_column :products, :meta_keywords, :text
    add_column :products, :meta_description, :text
  end
end
