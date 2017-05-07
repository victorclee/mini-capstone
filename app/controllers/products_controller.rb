class ProductsController < ApplicationController
  def index
    @product = Product.all
    render 'index.html.erb'
  end

  def show
    chair_id = params[:id]
    @chair = Product.find_by(id: chair_id)
  end

  def new
  end

  def create
    product = Product.new(
                          name: params[:name],
                          price: params[:price],
                          description: params[:description]  
                          )
    product.save
  end


end
