class AddMetaToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :meta_keywords, :text
    add_column :categories, :meta_description, :text
  end
end
