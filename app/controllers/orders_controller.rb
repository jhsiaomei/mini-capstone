class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    
    subtotal = product.price * params[:quantity].to_i
    tax = subtotal * product.tax
    total = subtotal + product.tax

    order = Order.create(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total,
      )
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
