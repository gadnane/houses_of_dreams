class AddDeactivatedToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :deactivated, :boolean, default: false
  end
end
