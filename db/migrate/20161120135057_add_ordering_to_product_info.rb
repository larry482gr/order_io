class AddOrderingToProductInfo < ActiveRecord::Migration[5.0]
  def change
    add_column :product_infos, :ordering, :integer
  end
end
