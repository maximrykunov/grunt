class AddOptionToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :option, :string
  end
end
