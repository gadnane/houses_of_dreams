class AddCustomerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :customer, :boolean, default: false
  end
end
