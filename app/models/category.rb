class Category < ApplicationRecord
  TRANSLATION_FIELDS = ['label']

  has_and_belongs_to_many :products

  # Set translations
  include Translateable

  # Set default pagination values.
  include Pageable
end
