class ProductsController < ApplicationController
  def index
    @title = "Products"
    @products = Product.all
  end

  def new
  end

  def create
    product = Product.create(
        title: params[:title],
        description: params[:description],
        price: params[:price],
        quantity: params[:quantity]
      )
    redirect_to '/products'
  end

  def show
    @title = "Product"
    @product = Product.find_by(id: params[:id])
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    product = Product.find_by(id: params[:id])
    product.update(
        title: params[:title],
        description: params[:description],
        price: params[:price],
        quantity: params[:quantity]
      )
    redirect_to "/products"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
  end
end
