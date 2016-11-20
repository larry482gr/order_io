class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :label
      t.integer :ordering

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Category.create_translation_table! label: :string
      end

      dir.down do
        Category.drop_translation_table!
      end
    end
  end
end
