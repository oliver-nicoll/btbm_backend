class Order < ApplicationRecord
    has_many :ordered_items, dependent: :destroy
    has_many :products, through: :ordered_items
    # before_save :set_cart_total

    validates :email, presence: true

    # def subtotal_order
    #     sum = 0

    #     self.ordered_items.each { |p| sum+= p.total_price}

    #     return sum
    # end

    # private

    # def set_cart_total
    #     self[:order_subtotal] = subtotal
    # end
end
