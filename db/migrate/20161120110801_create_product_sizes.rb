class CreateProductSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :product_sizes do |t|
      t.references :product, foreign_key: true
      t.references :size, foreign_key: true
      t.decimal :price, { precision: 5, scale: 2 }

      t.timestamps
    end
  end
end
