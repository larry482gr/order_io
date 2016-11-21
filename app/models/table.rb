class Table < ApplicationRecord
  TRANSLATION_FIELDS = ['label']

  # Set translations
  include Translateable
  # Set default pagination values.
  include Pageable
end
