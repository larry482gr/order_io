class ProductSize < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :size, optional: true
end
