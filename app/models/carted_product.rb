class CartedProduct < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :order

  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :status, presence: true
  validates :status, inclusion: { in: %w(carted removed purchased)}
end
