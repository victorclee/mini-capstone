class ProductsController < ApplicationController
  def index
    if session[:count] == nil
      session[:count] = 0
    end

    session[:count] += 1
    @visit_count = session[:count]

    
    @products = Product.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount = params[:discount]
    search_term = params[:search_term]
    category = params[:category]

    if category
      @products = Category.find_by(name: category).products
    end

    if search_term
      @products = @products.where(
                              "name iLIKE ? OR description iLIKE ?", 
                              "%#{search_term}%",
                              "%#{search_term}%"
                              )
    end

    if discount
      @products = @products.where("price < ?", discount)
    end

    if sort_attribute && sort_order
      @products = @products.order(sort_attribute => sort_order)
    elsif sort_attribute
      @products = @products.order(sort_attribute)
    end
  end

  def show
    product = params[:id]
    @product = Product.find_by(id: product)
  end

  def new
  end

  def create
    product = Product.new(
                          name: params[:name],
                          price: params[:price],
                          description: params[:description],
                          supplier_id: params[:supplier][:supplier_id]  
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

  def random
    product = Product.all.sample
    redirect_to "/designerchairs/#{product.id}"
  end

end
