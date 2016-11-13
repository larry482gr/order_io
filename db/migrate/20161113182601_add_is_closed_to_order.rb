class AddIsClosedToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :is_closed, :integer, limit: 1, default: 0
  end
end
