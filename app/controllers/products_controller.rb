class ProductsController < ApplicationController
  def home
    @title = "Home"
  end

  def products
    @title = "Products"
  end

  def product
    @title = "Product"
  end

  def confirmation
    @title = "Confirmation"
  end

end
