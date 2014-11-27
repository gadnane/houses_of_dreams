class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :property, index: true
      t.belongs_to :visit, index: true

      t.timestamps
    end
  end
end
