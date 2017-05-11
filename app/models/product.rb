class Product < ApplicationRecord
  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def discounted?
    price < 1000
  end
end
