class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :label
      t.string :description, limit: 1024
      t.string :photo
      t.integer :ordering

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Product.create_translation_table! label: :string,
                                          :description  => {:type => :string, :limit => 1024}
      end

      dir.down do
        Product.drop_translation_table!
      end
    end
  end
end
