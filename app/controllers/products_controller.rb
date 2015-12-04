class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

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
    elsif params[:category]
      @products = Category.find_by(name: params[:category]).products
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(
        title: params[:title],
        description: params[:description],
        price: params[:price],
        quantity: params[:quantity],
        supplier: params[:supplier]
      )
    if @product.save
      flash[:success] = "You successfully created this dinosaur!"
      redirect_to "/products/#{@product.id}"
    else
      render :new 
    end
  end

  def show
    @title = "Product"
   
    if params[:id] == "random"
      if Rails.env.development?
        @product = Product.order("RAND()").first
      else
        @product = Product.order("RANDOM()").first
      end
      @images = Image.where("product_id = ?", @product.id)
    else
      @product = Product.find_by(id: params[:id])
      @images = Image.where("product_id = ?", @product.id)
    end
    @product_categories = @product.categories.map{|category| category.name}
    @message
  end

  def edit
    @product = Product.find_by(id: params[:id])

  end

  def update
    @product = Product.find_by(id: params[:id])
    if @product.update(
        title: params[:title],
        description: params[:description],
        price: params[:price],
        quantity: params[:quantity]
        )
      flash[:success] = "You successfully updated this dinosaur!"
      redirect_to "/products/#{@product.id}"
    else
      render :edit
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    flash[:danger] = "You successfully deleted a dinosaur."
  end

  private

  def authenticate_admin!
    unless current_user && current_user.admin
      redirect_to "/products"
    end
  end
end
