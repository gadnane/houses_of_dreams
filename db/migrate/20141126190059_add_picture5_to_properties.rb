class AddPicture5ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :picture5, :string
  end
end
