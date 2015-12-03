class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.where("status = ? AND user_id = ?", "carted", current_user.id)
    if @carted_products == []
      redirect_to '/products'
    end
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

  def destroy
    carted_product = CartedProduct.find_by("id = ?", params[:carted_product_id])
    carted_product.update(
      status: "removed"
      )
    flash[:success] = "You successfully removed #{carted_product.product.title}!"
    redirect_to '/carted_products'
  end

end
