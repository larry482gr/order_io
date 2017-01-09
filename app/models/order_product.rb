class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product, optional: true
  belongs_to :size, optional: true

  # serialize :metadata, JSON
end
