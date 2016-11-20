class ProductInfo < ApplicationRecord
  translates :label, :fallbacks_for_empty_translations => true

  has_and_belongs_to_many :products
end
