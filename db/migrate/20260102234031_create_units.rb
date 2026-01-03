class CreateUnits < ActiveRecord::Migration[8.1]
  def change
    create_table :units do |t|
      t.references :property, null: false, foreign_key: true
      t.string :number
      t.string :name

      t.timestamps
    end
  end
end
