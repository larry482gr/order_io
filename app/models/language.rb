class Language < ApplicationRecord
  has_many :users
  has_many :translations

  validates :language, presence: true
  validates :locale, presence: true, uniqueness: true

  def option_label
    self.language.capitalize
  end
end
