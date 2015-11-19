class Product < ActiveRecord::Base
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
    if price.to_i < 25000
      @message = "Discount Item!"
    else
      @message = "On Sale!"
    end
  end

  def tax
    tax_charged = price.to_i * 0.090
  end

  def total
    total_cost = price.to_i + tax.to_i
    total_cost.to_s
  end
end
