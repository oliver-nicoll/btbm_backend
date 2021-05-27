class AddCartArrayToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :cart_array, :string
  end
end
