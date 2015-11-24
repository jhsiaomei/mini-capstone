class ImagesController < ApplicationController
  def new
  end

  def create
    Image.create(
      name: params[:name],
      link: params[:link],
      product_id: params[:product_id]
    )
    flash[:success] = "You successfully uploaded a photo!"
  end
end
