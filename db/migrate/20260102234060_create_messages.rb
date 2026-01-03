class CreateMessages < ActiveRecord::Migration[8.1]
  def change
    create_table :messages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
