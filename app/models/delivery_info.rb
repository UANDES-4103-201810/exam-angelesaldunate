class DeliveryInfo < ApplicationRecord
  validates :address, presence: true
  validates :adressinfo, presence: true
  validates :phone, presence: true, numericality: { only_integer: true }

end
