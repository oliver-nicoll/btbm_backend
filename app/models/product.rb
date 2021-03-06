class Product < ApplicationRecord
  has_many :ordered_items, dependent: :destroy
  has_many :orders, through: :ordered_items

  scope :search, -> (query) { self.where("name LIKE ?", "%#{query}%") }
    
  # CATEGORY = %w{ Candle Decor Jewelry Food Furniture Soap Other }


end
