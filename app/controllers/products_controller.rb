class ProductsController < ApplicationController
  def index
    @title = "Products"

    sort_by = params[:sort_by]
    sort_order = params[:order_by]
    name = params[:name]
    if sort_by && sort_order
      @products = Product.order(sort_by => sort_order)
    elsif sort_by == "price"
      @products = Product.where("price < ?", 25000)
    elsif name
      @products = Product.where("title LIKE ?", "%#{name}%")
    else
      @products = Product.all
    end
  end

  def new
  end

  def create
    product = Product.create(
        title: params[:title],
        description: params[:description],
        price: params[:price],
        quantity: params[:quantity],
        image: params[:image]
      )
    flash[:success] = "You successfully created this dinosaur!"
    redirect_to '/products'
  end

  def show
    @title = "Product"
   
    if params[:id] == "random"
      @product = Product.order("RAND()").first
      @images = Image.where("product_id = ?", @product.id)
    else
      @product = Product.find_by(id: params[:id])
      @images = Image.where("product_id = ?", @product.id)
    end

    @message
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
    flash[:success] = "You successfully updated this dinosaur!"
    redirect_to "/products"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    flash[:danger] = "You successfully deleted a dinosaur."
  end
end
