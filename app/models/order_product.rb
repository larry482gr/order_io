class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  serialize :metadata, JSON
end
