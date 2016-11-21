class AddOrderingToLanguage < ActiveRecord::Migration[5.0]
  def change
    add_column :languages, :ordering, :integer
  end
end
