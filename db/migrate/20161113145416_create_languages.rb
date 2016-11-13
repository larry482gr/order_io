class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages, options: 'CHARSET=latin1 COLLATE=latin1_general_ci' do |t|
      t.string :locale, {limit: 5, null: false}
      t.string :language, {limit: 20, null: false}

      t.timestamps
    end
  end
end
