class AddLanguageReferenceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :language, { index: true, foreign_key: true, default: 1 }
  end
end
