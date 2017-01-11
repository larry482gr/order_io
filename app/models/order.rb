class Order < ApplicationRecord
  belongs_to :table
  has_many :order_products, inverse_of: :order
  has_many :products, :through => :order_products

  accepts_nested_attributes_for :order_products
end
