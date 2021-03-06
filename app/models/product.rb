class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  belongs_to :user
  has_many :orders
  has_many :categorized_products
  has_many :categories, through: :categorized_products

  DISCOUNT_THRESHOLD = 25000

  validates :title, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }

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
