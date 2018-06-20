class AddActiveToCustomerOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :customer_orders, :active, :boolean
  end
end
