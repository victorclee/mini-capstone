class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  
  has_many :category_products
  has_many :categories, through: :category_products


  def discounted?
    price < 2000
  end
  def tax
    price * 0.09
  end
  def total
    price + tax
  end

  def first_image_url
    image_collection = images
    if image_collection.length == 0
      "http://www.wellesleysocietyofartists.org/wp-content/uploads/2015/11/image-not-found.jpg"
    else
      image_collection.first.url
    end
  end
end
