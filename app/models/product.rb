class Product < ApplicationRecord
  # translates :label, :description, :fallbacks_for_empty_translations => true

  mount_uploader :photo, ProductPhotoUploader

  DEFAULT = 'default'

  has_and_belongs_to_many :categories
  has_and_belongs_to_many :product_infos
  has_many :order_products
  has_many :orders, :through => :order_products
  has_many :product_sizes
  has_many :sizes, :through => :product_sizes

  accepts_nested_attributes_for :product_infos
end
