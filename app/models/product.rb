class Product < ApplicationRecord
  belongs_to :supplier
  def discounted?
    price < 2000
  end
  def tax
    price * 0.09
  end
  def total
    price + tax
  end
end
