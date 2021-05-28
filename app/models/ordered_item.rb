class OrderedItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  # validates :order_id, numericality: { only_integer: true }
  validates :product_id, numericality: { only_integer: true }
  validates :quantity, numericality: { only_integer: true }


  def total_price
    self.quantity * self.product.price
  end

end
