class CreateProductSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :product_sizes do |t|
      t.references :product, foreign_key: {on_update: :cascade, on_delete: :cascade}
      t.references :size, foreign_key: {on_update: :cascade, on_delete: :cascade}
      t.decimal :price, { precision: 5, scale: 2 }

      t.timestamps
    end
  end
end
