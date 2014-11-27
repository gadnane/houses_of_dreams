class AddPicture2ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :picture2, :string
  end
end
