class AddAttributesToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :visible, :boolean, default: true
    add_column :pages, :show_in_menu, :boolean, default: false
    add_column :pages, :position, :integer, default: 100
  end
end
