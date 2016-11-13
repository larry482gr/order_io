class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :table, index: true, foreign_key: true, default: 1

      t.timestamps
    end
  end
end
