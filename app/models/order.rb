class Order < ApplicationRecord
  has_many :customer_orders
  has_many :customers, through: :customer_orders, :dependent => :destroy
  has_many :pizza_orders
  has_many :pizzas, through: :pizza_orders, :dependent => :destroy

end
