class AddLinkToSheet < ActiveRecord::Migration[5.1]
  def change
    add_column :sheets, :link, :string
  end
end
