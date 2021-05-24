class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :email
      t.string :order_number

      t.timestamps
    end
  end
end
