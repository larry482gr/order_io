class CreateTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :translations do |t|
      t.string :table_name, limit: 64
      t.string :locale, limit: 16
      t.integer :reference_id
      t.text :fields

      t.timestamps
    end
  end
end
