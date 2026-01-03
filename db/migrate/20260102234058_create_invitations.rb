class CreateInvitations < ActiveRecord::Migration[8.1]
  def change
    create_table :invitations do |t|
      t.string :email
      t.string :token
      t.references :property, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true
      t.datetime :expires_at

      t.timestamps
    end
    add_index :invitations, :token
  end
end
