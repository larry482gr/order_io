class CreateWaiters < ActiveRecord::Migration[5.0]
  def change
    create_table :waiters do |t|
      t.string :name
      t.integer :pin

      t.timestamps
    end
  end
end
