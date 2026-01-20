class CreateProperties < ActiveRecord::Migration[8.1]
  def change
    create_table :properties do |t|
      t.string :type, null: false

      # Shared fields
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :country, null: false
      # Single unit specific fields
      t.string :address_extension

      t.timestamps
    end

    add_index :properties, :type
  end
end
