class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    order = Order.create(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      subtotal: product.price,
      tax: product.tax,
      total: product.total,
      )
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.last
  end
end
