class CreateJoinTableProductProductInfo < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :product_infos do |t|
      t.index [:product_id, :product_info_id]
      # t.index [:product_info_id, :product_id]
    end
  end
end
