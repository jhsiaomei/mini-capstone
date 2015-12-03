class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.where("status = ? AND user_id = ?", "carted", current_user.id)
  end

  def create
    CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
      )

    flash[:success] = "You successfully added this dinosaur to your cart!"
    redirect_to "/products"
  end
end
