class Order < ApplicationRecord
    has_many :ordered_items, dependent: :destroy
    has_many :products, through: :ordered_items
    # before_save :set_cart_total

    validates :email, presence: true

    def cart_array=(cart_array)
        #array of numbers - [1, 2, 4, 1, 2]
        cart_array.each do |product_id|
            # byebug
            if ordered_item = self.ordered_items.find{ |ordered_item| ordered_item.product_id == product_id }
                # (product_id: product_id)
                #add to the quantity of existing ordered_item
                # ordered_item = self.ordered_items.find_by(product_id: product_id)
                ordered_item.quantity += 1 
            else
                #make a new ordered_item
                self.ordered_items.new(product_id: product_id, quantity: 1)
            end
        end

    end

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
