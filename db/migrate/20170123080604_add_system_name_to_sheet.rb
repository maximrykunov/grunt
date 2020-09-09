class AddSystemNameToSheet < ActiveRecord::Migration[5.1]
  def change
    add_column :sheets, :system_name, :string
  end
end
