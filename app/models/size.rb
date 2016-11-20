class Size < ApplicationRecord
  translates :label, :fallbacks_for_empty_translations => true

  has_many :product_sizes
  has_many :products, :through => :product_sizes
end
