class OrdersController < ApplicationController
  def create
    carted_products = CartedProduct.where("status = ? AND user_id = ?", "carted", current_user.id)

    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += (carted_product.product.price * carted_product.quantity)
    end

    tax = subtotal * 0.09

    order = Order.create(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: subtotal + tax
      )

    carted_products.each do |carted_product|
      carted_product.update(
        status: "purchased",
        order_id: order.id
        )
    end

    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
