class AddPicture3ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :picture3, :string
  end
end
