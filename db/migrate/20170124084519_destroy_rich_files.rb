class DestroyRichFiles < ActiveRecord::Migration
  def change
    drop_table :rich_rich_files
  end
end
