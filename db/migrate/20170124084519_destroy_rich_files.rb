class DestroyRichFiles < ActiveRecord::Migration[5.1]
  def change
    drop_table :rich_rich_files
  end
end
