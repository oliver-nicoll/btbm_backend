class Product < ApplicationRecord
  belongs_to :market
  has_many :ordered_items, dependent: :destroy
  has_many :orders, through: :ordered_items

  scope :search, -> (query) { self.where("product_name LIKE ?", "%#{query}%") }
    
  CATEGORY = %w{ Candle Decor Jewelry Food Furniture Soap Other }


end
