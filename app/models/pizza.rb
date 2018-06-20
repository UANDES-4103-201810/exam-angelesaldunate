class Pizza < ApplicationRecord
  belongs_to :crust
  belongs_to :recipe
  has_many :pizza_orders
  has_many :orders, through: :pizza_orders, :dependent => :destroy

end
