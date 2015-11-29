class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  belongs_to :user
  has_many :orders
  has_many :categorized_products

  DISCOUNT_THRESHOLD = 25000

  def sale_message
    if price < DISCOUNT_THRESHOLD
      @message = "Discount Item!"
    else
      @message = "On Sale!"
    end
  end

  def tax
    tax_charged = price * 0.09
  end

  def total
    total_cost = price + tax
  end
end
