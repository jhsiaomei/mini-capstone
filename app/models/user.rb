class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :carted_products
  has_many :products
  has_many :orders

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :admin, presence: true
  validates :admin, inclusion: { in: %w(0 1) }
  validates :password, presence: true
end
