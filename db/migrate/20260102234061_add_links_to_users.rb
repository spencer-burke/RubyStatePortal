class AddLinksToUsers < ActiveRecord::Migration[8.1]
  def change
    add_reference :users, :property, null: true, foreign_key: true
    add_reference :users, :unit, null: true, foreign_key: true
  end
end
