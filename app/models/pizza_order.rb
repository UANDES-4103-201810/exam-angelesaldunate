class PizzaOrder < ApplicationRecord
  belongs_to :pizza
  belongs_to :order
  validates :pizza_id, presence: true

end
