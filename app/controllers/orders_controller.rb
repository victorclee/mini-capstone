class OrdersController < ApplicationController
  def new
  end

  def create
    # product = Product.find(params[:product_id])
    # calculated_subtotal = product.price * params[:quantity].to_i
    # calculated_tax = calculated_subtotal * 0.09
    # calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
                      product_id: params[:product_id],
                      user_id: current_user.id,
                      quantity: params[:quantity],
                      subtotal: params[:subtotal],
                      tax: params[:tax],
                      total: params[:total]
                      )
    if order.save
    redirect_to "/orders/#{order.id}"    
    end
  end

  def show
    @order = Order.find(params[:id])
  end
end
