class AddSizePriceToOrderProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_products, :size, index: true, foreign_key: { on_update: :cascade, on_delete: :nullify }
    add_column :order_products, :price, :decimal, precision: 5, scale: 2
  end
end
