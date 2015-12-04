class Order < ActiveRecord::Base
  has_many :carted_products
  belongs_to :user
  belongs_to :product

  validates :user_id, presence: true
  validates :subtotal, presence: true
  validates :tax, presence: true
  validates :total, presence: true
  validates :subtotal, numericality: { greater_than: 0 }
  validates :tax, numericality: { greater_than: 0 }
  validates :total, numericality: { greater_than: 0 }
end
