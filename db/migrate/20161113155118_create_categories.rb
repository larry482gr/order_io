class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :label
      t.integer :ordering
      t.references :language, index: true, foreign_key: true, default: 1

      t.timestamps
    end
  end
end
