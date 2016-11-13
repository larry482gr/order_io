class Product < ApplicationRecord
  DEFAULT = 'default'

  belongs_to :language
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :product_infos
  has_many :order_products
  has_many :orders, :through => :order_products

  serialize :sizes, JSON
  serialize :prices, JSON

=begin
  private

  after_validation :set_default_size
  after_validation :set_default_price

  def set_default_size
    size = self.sizes.blank? ? [] : self.sizes.split(',')

    size.insert(0, DEFAULT) unless size.include? (DEFAULT)

    self.sizes = size
  end

  def set_default_price
    price = self.prices.blank? ? [] : self.prices.split(',')

    price.insert(0, DEFAULT) unless price.include? (DEFAULT)

    self.prices = price
  end
=end
end
