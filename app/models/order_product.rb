class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :size

  serialize :metadata, JSON
end
