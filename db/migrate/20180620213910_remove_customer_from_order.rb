class RemoveCustomerFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_reference :orders, :customer, foreign_key: true
  end
end
