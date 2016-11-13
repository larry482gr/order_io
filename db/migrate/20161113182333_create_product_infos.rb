class CreateProductInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :product_infos do |t|
      t.string :label

      t.timestamps
    end
  end
end
