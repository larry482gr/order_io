class Order < ApplicationRecord
  belongs_to :table
  has_many :order_products
  has_many :products, :through => :order_products
end
