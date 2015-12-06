class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.create(params[:supplier])
    redirect_to "/suppliers/#{@supplier.id}"
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
  end

  def edit
    @supplier = Supplier.find_by(id: params[:id])
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    if params[:supplier]
      @supplier.update(params[:supplier])
      redirect_to "/suppliers/#{@supplier.id}"
    else
      @supplier.update(active: 0)
      redirect_to "/suppliers"
    end
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    redirect_to "/suppliers"
  end
end
