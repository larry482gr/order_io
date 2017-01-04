class CreateOrderProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :order_products do |t|
      t.references :order, index: true, foreign_key: { on_update: :cascade, on_delete: :cascade }
      t.references :product, index: true, foreign_key: { on_update: :cascade, on_delete: :nullify }
      t.integer :quantity
      t.text :metadata

      t.timestamps
    end
  end
end
