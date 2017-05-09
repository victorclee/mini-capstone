class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
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
    flash[:success] = "Product Successfully Created"
    redirect_to "/designerchairs/#{ product.id }"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.assign_attributes(
                            name: params[:name],
                            price: params[:price],
                            description: params[:description]
                            )
    product.save
    flash[:success] = "Product Information Successfully Updated"
    redirect_to "/designerchairs/#{ product.id }"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:warning] = "Product Deleted"
    redirect_to "/"
  end

end
