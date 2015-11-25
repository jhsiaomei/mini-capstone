class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  belongs_to :user
  has_many :orders

  DISCOUNT_THRESHOLD = 25000

  def display_price
    "$#{price}"
  end

  def display_tax
    "$#{tax}"
  end

  def display_total
    "$#{total}"
  end

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
    total_cost
  end
end
