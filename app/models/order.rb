class Order < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user, optional: true 
  belongs_to :product
  has_many :carted_products
  has_many :products, through: :carted_products

  def subtotal
    quantity * product.price
  end

  def tax
    subtotal * 0.09
  end

  def total
    subtotal + tax
  end

end
