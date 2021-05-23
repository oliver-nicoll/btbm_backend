class AddDescriptionToMarket < ActiveRecord::Migration[6.1]
  def change
    add_column :markets, :description, :text
  end
end
