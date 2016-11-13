class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :label
      t.string :description
      t.string :photo
      t.text :sizes
      t.text :prices
      t.integer :ordering
      t.references :language, index: true, foreign_key: true, default: 1

      t.timestamps
    end

    change_column :products, :sizes, 'TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci'
    change_column :products, :prices, 'TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci'
  end
end
