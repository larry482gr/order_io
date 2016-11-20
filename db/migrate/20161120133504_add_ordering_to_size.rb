class AddOrderingToSize < ActiveRecord::Migration[5.0]
  def change
    add_column :sizes, :ordering, :integer
  end
end
