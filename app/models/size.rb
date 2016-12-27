class Size < ApplicationRecord
  TRANSLATION_FIELDS = ['label']

  has_many :product_sizes
  has_many :products, :through => :product_sizes

  # Set translations
  include Translateable
  
  # Set default pagination values.
  include Pageable

  before_destroy :check_for_default_size, prepend: true

  private

  def check_for_default_size
    if self.id == 1
      # For Rails <= 4 use:
      # return false

      # For Rails 5 use:
      throw(:abort)
    end
  end
end
