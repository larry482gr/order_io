class Language < ApplicationRecord
  # TRANSLATION_FIELDS = ['language']
  
  has_many :users
  has_many :translations

  validates :language, presence: true
  validates :locale, presence: true, uniqueness: true

  def option_label
    self.language.capitalize
  end

  # Set translations
  include Translateable
  
  # Set default pagination values.
  include Pageable
end
