class CreateCustomerOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_orders do |t|
      t.references :customer, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
