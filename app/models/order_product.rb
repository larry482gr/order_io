class OrderProduct < ApplicationRecord
  belongs_to :order

  serialize :metadata, JSON
end
