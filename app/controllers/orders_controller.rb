class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    carted_products = current_user.cart

    order = Order.new(user_id: current_user.id)
    order.save
    
    carted_products.update_all(status: "purchased", order_id: order.id)
    order.calculate_totals

    flash[:success] = "Order Success!"
    redirect_to "/orders/#{ order.id }"
  end

  def show
    @order = Order.find(params[:id])
    redirect_to '/' unless current_user.id == @order.user.id
  end
end
