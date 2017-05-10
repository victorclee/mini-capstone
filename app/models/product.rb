class Product < ApplicationRecord
  def sale_message
    if price < 1000
      return "Discount Item!"
    else
      return "Everyday Value!!"
    end
  end

  def tax
    taxation = price * 0.09
    "The tax for this item is: $ #{taxation}"
  end
end
