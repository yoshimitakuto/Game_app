class AddUseridToSales < ActiveRecord::Migration[6.1]
  def change
    add_column :sales, :user_id, :integer
  end
end
