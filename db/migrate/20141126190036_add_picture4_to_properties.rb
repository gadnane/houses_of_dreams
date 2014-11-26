class AddPicture4ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :picture4, :string
  end
end
