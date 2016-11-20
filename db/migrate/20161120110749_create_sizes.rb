class CreateSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :sizes do |t|
      t.string :label

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Size.create_translation_table! label: :string
      end

      dir.down do
        Size.drop_translation_table!
      end
    end
  end
end
