class Language < ApplicationRecord
  has_many :users
  has_many :tables
  has_many :categories
  has_many :products

  validates :language, presence: true
  validates :locale, presence: true, uniqueness: true

  def option_label
    self.language.capitalize
  end
end
