class Product < ApplicationRecord
  TRANSLATION_FIELDS = ['label', 'description']

  mount_uploader :photo, ProductPhotoUploader

  DEFAULT = 'default'

  has_and_belongs_to_many :categories
  has_and_belongs_to_many :product_infos
  has_many :order_products
  has_many :orders, :through => :order_products
  has_many :product_sizes
  has_many :sizes, :through => :product_sizes

  # accepts_nested_attributes_for :categories
  # accepts_nested_attributes_for :product_infos
  accepts_nested_attributes_for :product_sizes

  # Set translations
  include Translateable
  # Set default pagination values.
  include Pageable
end
