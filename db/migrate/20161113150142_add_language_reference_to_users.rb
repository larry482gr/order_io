class AddLanguageReferenceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :language, { index: true, foreign_key: {on_update: :cascade, on_delete: :restrict}, default: 1 }
  end
end
