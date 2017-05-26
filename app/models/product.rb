class Product < ApplicationRecord
  belongs_to :supplier

  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :description, presence: true
  validates :description, length: { maximum: 500 }


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

  def stringify_categories
    categories.map { |category| category.name.titleize }.join(", ")    
    # category_array = []
    # categories.each do |cat|
    #   category_array << cat.name.titleize
    # end
    # category_array.join(", ")
  end

end
