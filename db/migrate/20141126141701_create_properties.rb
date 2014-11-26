class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :address
      t.string :location
      t.integer :bedroom
      t.integer :bathroom
      t.integer :other
      t.decimal :rent
      t.references :user, index: true

      t.timestamps null: false
    end
    add_index :properties, [:user_id, :created_at]
  end
end
