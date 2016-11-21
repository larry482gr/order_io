class CreateTranslationFields < ActiveRecord::Migration[5.0]
  def change
    create_table :translation_fields do |t|
      t.string :table_name, limit: 64
      t.text :field_keys

      t.timestamps
    end
  end
end
