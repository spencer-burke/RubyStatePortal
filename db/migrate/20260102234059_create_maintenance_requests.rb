class CreateMaintenanceRequests < ActiveRecord::Migration[8.1]
  def change
    create_table :maintenance_requests do |t|
      t.references :property, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
