class Size < ApplicationRecord
  TRANSLATION_FIELDS = ['label']

  has_many :product_sizes
  has_many :products, :through => :product_sizes

  # Set translations
  include Translateable
  
  # Set default pagination values.
  include Pageable
end
