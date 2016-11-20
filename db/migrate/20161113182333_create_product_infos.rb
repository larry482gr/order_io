class CreateProductInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :product_infos do |t|
      t.string :label

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        ProductInfo.create_translation_table! label: :string
      end

      dir.down do
        ProductInfo.drop_translation_table!
      end
    end
  end
end
