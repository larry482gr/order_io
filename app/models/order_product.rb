class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :size

  serialize :metadata, JSON

  before_validation :clean_metadata

  private

  def clean_metadata
    self.metadata.reject! { |v|  v.blank? }
  end
end
