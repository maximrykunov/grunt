class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :contact_type
      t.string :message

      t.timestamps null: false
    end
  end
end
